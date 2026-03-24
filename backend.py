import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

df = pd.read_csv("dados.csv")


def get_jogador(nome):
    return df[df["nome_jogador"] == nome]

def stats_total(nome):
    jogador = get_jogador(nome)
    
    cols = colunas_goleiro() if eh_goleiro(nome) else colunas_linha()
    
    return jogador[cols].sum()

def medias(nome):
    jogador = get_jogador(nome)
    
    cols = colunas_goleiro() if eh_goleiro(nome) else colunas_linha()
    
    return jogador[cols].mean()

def colunas_linha():
    return [
        "passes_totais", "passes_certos", "chances_criadas",
        "desarmes", "interceptacoes", "bloqueios",
        "posse_ganha", "posse_perdida",
        "chutes_tentados", "chutes_no_gol",
        "boas_chances", "boas_chances_convertidas",
        "dribles_tentados", "dribles",
        "dribles_sofridos_tentados", "dribles_sofridos",
        "gols", "assists", "pre_ast"
    ]

def colunas_goleiro():
    return [
        "passes_totais", "passes_certos",
        "desarmes", "interceptacoes", "bloqueios",
        "posse_ganha", "posse_perdida",
        "tentativas_defesa", "defesas",
        "tentativas_defesas_dificies", "defesas_dificies",
        "assists", "pre_ast"
    ]

def score_linha(row):
    import numpy as np

    passes_eff = row["passes_certos"] / row["passes_totais"] if row["passes_totais"] else 0
    chute_eff = row["chutes_no_gol"] / row["chutes_tentados"] if row["chutes_tentados"] else 0
    conv_gol = row["gols"] / row["chutes_tentados"] if row["chutes_tentados"] else 0
    drible_eff = row["dribles"] / row["dribles_tentados"] if row["dribles_tentados"] else 0

    ataque = (
        row["gols"] * 10 +
        chute_eff * 2 +
        conv_gol * 5
    )

    criacao = (
        row["assists"] * 5.5 +
        row["pre_ast"] * 3 +
        row["chances_criadas"] * 2.5
    )

    construcao = (
        passes_eff * np.log1p(row["passes_totais"]) * 4 -
        row["posse_perdida"] * 0.9 +
        row["posse_ganha"] * 0.75
    )

    defesa = (
        row["desarmes"] * 2.5 +
        row["interceptacoes"] * 3 +
        row["bloqueios"] * 2
    )

    drible = (
        drible_eff * np.log1p(row["dribles_tentados"]) * 5.5 -
        row["dribles_sofridos"] * 2
    )

    score = ataque + criacao + construcao + defesa + drible

    # penalizações
    if row["passes_totais"] < 5:
        score *= 0.8

    if passes_eff < 0.6:
        score -= 2

    return score

def score_goleiro(row):
    def_eff = row["defesas"] / row["tentativas_defesa"] if row["tentativas_defesa"] else 0
    def_dif_eff = row["defesas_dificies"] / row["tentativas_defesas_dificies"] if row["tentativas_defesas_dificies"] else 0

    score = (
        row["defesas"] * 2 +
        row["defesas_dificies"] * 6 +
        def_eff * 10 +
        def_dif_eff * 6 -
        row["gols"] * 2
    )

    return score

def score_jogo(row):
    if row["posicao"] == "GOL":
        return score_goleiro(row)
    else:
        return score_linha(row)
    
def calcular_notas():
    df_copy = df.copy()
    
    df_copy["score"] = df_copy.apply(score_jogo, axis=1)
    
    # rank percentual (0–1)
    df_copy["percentil"] = df_copy["score"].rank(pct=True)
    
    # transformar em nota 0–10
    df_copy["nota"] = 3 + df_copy["percentil"] * 7
    # -> varia de 3 a 10 (tipo Sofascore)
    
    return df_copy

def nota_jogo(row):
    df_notas = calcular_notas()
    
    linha = df_notas.loc[row.name]
    
    return round(linha["nota"], 2)

def nota_media(nome):
    df_notas = calcular_notas()
    
    jogador = df_notas[df_notas["nome_jogador"] == nome]
    
    return jogador["nota"].mean()

def ranking_nota():
    jogadores = df["nome_jogador"].unique()
    
    ranking = {
        nome: nota_media(nome)
        for nome in jogadores
    }
    
    return pd.Series(ranking).sort_values(ascending=False)

def notas_por_jogo(nome):
    jogador = get_jogador(nome).copy()
    
    jogador["nota"] = jogador.apply(nota_jogo, axis=1)
    
    return jogador[["id_jogo", "nota"]]

def cor_nota(nota):
    if nota >= 8:
        return "green"
    elif nota >= 6.5:
        return "orange"
    else:
        return "red"

def ranking_gols():
    ranking = df.groupby("nome_jogador")["gols"].sum()
    
    ranking = ranking[ranking > 0]
    
    return ranking.sort_values(ascending=False)

def ranking_assists():
    ranking = df.groupby("nome_jogador")["assists"].sum()
    
    ranking = ranking[ranking > 0]
    
    return ranking.sort_values(ascending=False)

def ranking_mvp():
    mvps = calcular_mvp_por_jogo()
    
    ranking = mvps["nome_jogador"].value_counts()
    
    return ranking

def calcular_mvp_por_jogo():
    df_notas = calcular_notas()
    
    mvps = df_notas.loc[df_notas.groupby("id_jogo")["nota"].idxmax()]
    
    return mvps

def ranking_geral():
    jogadores = df["nome_jogador"].unique()
    
    ranking = {
        nome: score_geral(nome)
        for nome in jogadores
    }
    
    return pd.Series(ranking).sort_values(ascending=False)


def normalizar_liga(features):
    norm = (features - features.min()) / (features.max() - features.min())
    norm = norm.fillna(0)
    
    return norm * 100

def features_por_jogador():
    grouped = df.groupby("nome_jogador").mean(numeric_only=True)

    features = pd.DataFrame(index=grouped.index)

    # 🔴 ATAQUE (qualidade)
    tent = grouped["chutes_tentados"]
    succ = grouped["chutes_no_gol"]

    media_liga = df["chutes_no_gol"].sum() / df["chutes_tentados"].sum()
    features["Ataque"] = (
    grouped["gols"] * 3 +
    (succ + 10 * media_liga) / (tent + 15) +
    (grouped["boas_chances_convertidas"] / grouped["boas_chances"].replace(0,1)) * 5
    )

    # 🟡 CRIAÇÃO
    features["Criação"] = (
    grouped["assists"] * 5 +
    grouped["pre_ast"] * 3 +
    grouped["chances_criadas"] * 2
    )

    # 🔵 PASSE (eficiência pura)
    tent = grouped["passes_totais"]
    succ = grouped["passes_certos"]

    media_liga = df["passes_certos"].sum() / df["passes_totais"].sum()

    features["Passe"] = (succ + 30 * media_liga) / (tent + 45)

    # 🟢 DEFESA (equilíbrio)
    features["Defesa"] = (
    grouped["desarmes"] +
    grouped["interceptacoes"] +
    grouped["bloqueios"]
    )

    # suavização (regressão à média)
    tent = grouped["dribles_tentados"]
    succ = grouped["dribles"]

    media_liga = (df["dribles"].sum() / df["dribles_tentados"].sum())

    features["Drible"] = (
    (succ + 40 * media_liga) / (tent + 65)
    )

    return features


def historico_jogos(nome):
    jogador = get_jogador(nome)
    
    cols = [
        "id_jogo", "rodada", "fase", "time",
        "gols", "assists", "chutes_tentados", "chutes_no_gol"
    ]
    
    return jogador[cols].sort_values("id_jogo")


def adicionar_adversario():
    global df
    
    df["adversario"] = None
    
    for jogo_id in df["id_jogo"].unique():
        jogo = df[df["id_jogo"] == jogo_id]
        
        times = jogo["time"].unique()
        
        if len(times) == 2:
            t1, t2 = times
            
            df.loc[(df["id_jogo"] == jogo_id) & (df["time"] == t1), "adversario"] = t2
            df.loc[(df["id_jogo"] == jogo_id) & (df["time"] == t2), "adversario"] = t1

adicionar_adversario()

def label_jogo(row):
    return (
        f"{row['time']} {row['placar_time']} x {row['placar_adv']} {row['adversario']} | "
        f"Rodada {row['rodada']} ({row['fase']})"
    )

def score_geral(nome):
    j = get_jogador(nome).sum(numeric_only=True)
    
    score = (
        j["gols"] * 5 +
        j["assists"] * 4 +
        j["chances_criadas"] * 2 +
        j["desarmes"] * 1.5 +
        j["interceptacoes"] * 1.5 +
        j["passes_certos"] * 0.05 -
        j["posse_perdida"] * 1
    )
    
    return score

def comparar(jogador1, jogador2):
    j1 = stats_total(jogador1)
    j2 = stats_total(jogador2)
    
    comp = pd.DataFrame({
        jogador1: j1,
        jogador2: j2
    })
    
    return comp

def radar_dados(nome):
    features = features_por_jogador()
    stats = stats_por_jogo()

    df_plot = features.join(stats, how="inner")
    df_plot["jogador"] = df_plot.index

    percentil = features.rank(pct=True) * 100
    percentil = percentil.clip(0, 100)

    if nome not in percentil.index:
        return None

    return percentil.loc[nome].fillna(0).to_dict()

def radar_comparar_plotly(j1, j2):
    import plotly.graph_objects as go

    d1 = radar_dados(j1)
    d2 = radar_dados(j2)

    if d1 is None or d2 is None:
        return None

    labels = [nome_bonito(l) for l in d1.keys()]

    v1 = list(d1.values())
    v2 = list(d2.values())

    # fecha o radar
    labels += [labels[0]]
    v1 += [v1[0]]
    v2 += [v2[0]]

    fig = go.Figure()

    # 🔵 jogador 1
    fig.add_trace(go.Scatterpolar(
        r=v1,
        theta=labels,
        fill='toself',
        name=j1,
        line=dict(color='#00C2FF', width=3),
        fillcolor='rgba(0,194,255,0.3)'
    ))

    # 🔴 jogador 2
    fig.add_trace(go.Scatterpolar(
        r=v2,
        theta=labels,
        fill='toself',
        name=j2,
        line=dict(color='#FF4D4D', width=3),
        fillcolor='rgba(255,77,77,0.25)'
    ))

    fig.update_layout(
        polar=dict(
            radialaxis=dict(
                visible=True,
                range=[0,100]
            )
        ),
        showlegend=True,
        template="plotly_dark",
        margin=dict(l=20, r=20, t=20, b=20),
        height=450
    )

    return fig

def percentil(stat):
    grouped = df.groupby("nome_jogador")[stat].sum()
    return grouped.rank(pct=True)

def eficiencia_avancada(nome):
    j = get_jogador(nome).sum(numeric_only=True)
    
    metrics = {}

    metrics["Porcentagem de passes certos"] = j["passes_certos"] / j["passes_totais"] if j["passes_totais"] else 0
    metrics["Porcentagem de chutes certos"] = j["chutes_no_gol"] / j["chutes_tentados"] if j["chutes_tentados"] else 0
    metrics["Conversão de gols por finalização"] = j["gols"] / j["chutes_tentados"] if j["chutes_tentados"] else 0
    metrics["Sucesso dos dribles"] = j["dribles"] / j["dribles_tentados"] if j["dribles_tentados"] else 0
    metrics["Eficiência defensiva"] = (
    (j["dribles_sofridos_tentados"] / (j["dribles_sofridos_tentados"] + j["dribles_sofridos"] + 1)) +
    (j["posse_ganha"] / (j["posse_ganha"] + j["posse_perdida"] + 1))
    ) / 2

    return metrics

def eh_goleiro(nome):
    jogador = get_jogador(nome)
    return (jogador["posicao"] == "GOL").any()

def stats_goleiro_avancado(nome):
    j = get_jogador(nome).sum(numeric_only=True)
    
    stats = {}

    # % defesas
    stats["pct_defesas"] = (
        j["defesas"] / j["tentativas_defesa"]
        if j["tentativas_defesa"] else 0
    )

    # % defesas difíceis
    stats["pct_defesas_dificeis"] = (
        j["defesas_dificies"] / j["tentativas_defesas_dificies"]
        if j["tentativas_defesas_dificies"] else 0
    )

    # eficiência geral (mistura)
    stats["eficiencia_goleiro"] = (
        stats["pct_defesas"] * 0.7 +
        stats["pct_defesas_dificeis"] * 0.3
    )

    return stats


def ranking_por_stat(stat):
    grouped = df.groupby("nome_jogador").sum(numeric_only=True)

    if stat == "pct_passes":
        valores = grouped["passes_certos"] / grouped["passes_totais"].replace(0, 1)

    elif stat == "pct_chutes":
        valores = grouped["chutes_no_gol"] / grouped["chutes_tentados"].replace(0, 1)

    elif stat == "pct_dribles":
        valores = grouped["dribles"] / grouped["dribles_tentados"].replace(0, 1)

    elif stat == "pct_defesas":
        valores = grouped["defesas"] / grouped["tentativas_defesa"].replace(0, 1)

    elif stat == "nota":
        return ranking_nota()

    else:
        valores = grouped[stat]

    valores = valores.fillna(0)

    return valores.sort_values(ascending=False)


def badge_jogador(nome):
    f = radar_dados(nome)

    if f is None:
        return None

    # transforma pra 0–1
    valores = {k: v/100 for k, v in f.items()}

    ataque = valores["Ataque"]
    criacao = valores["Criação"]
    passe = valores["Passe"]
    defesa = valores["Defesa"]
    drible = valores["Drible"]

    stats = {
        "Matador🎯": ataque,
        "Maestro🧠": criacao,
        "Controlador🎮": passe,
        "Muralha🛡️": defesa,
        "Driblador⚡": drible,
    }

    vals = list(stats.values())

    media = np.mean(vals)
    desvio = np.std(vals)

    ordenado = sorted(stats.items(), key=lambda x: x[1], reverse=True)

    top_nome, top_valor = ordenado[0]
    segundo_valor = ordenado[1][1]

    # 🔥 COMPLETO (AGORA RARO DE VERDADE)
    if media > 0.8 and desvio < 0.12:
        return "🔥 Completo"

    # 💪 DOMINANTE
    if top_valor > 0.75 and (top_valor - segundo_valor) > 0.15:
        return top_nome

    # 🎭 HÍBRIDO
    return f"{top_nome.split()[0]} + {ordenado[1][0].split()[0]}"

def badge_formatado(badge):
    cores = {
        "Matador🎯": "#ff4d4d",
        "Maestro🧠": "#9b59b6",
        "Controlador🎮": "#3498db",
        "Muralha🛡️": "#2ecc71",
        "Driblador⚡": "#f1c40f",
        "🔥 Completo": "#e67e22"
    }

    # 🔥 COMPLETO
    if badge == "🔥 Completo":
        return f"<span class='badge' style='color:{cores.get(badge)}'>{badge}</span>"

    # 🎭 HÍBRIDO
    if " + " in badge:
        b1, b2 = badge.split(" + ")

        cor1 = cores.get(b1, "white")
        cor2 = cores.get(b2, "white")

        return (
            f"<span style='color:{cor1}'><b>{b1}</b></span>"
            f" + "
            f"<span style='color:{cor2}'><b>{b2}</b></span>"
        )

    # 💪 NORMAL
    cor = cores.get(badge, "white")
    return f"<span style='color:{cor}'><b>{badge}</b></span>"

def stats_por_jogo():
    grouped = df.groupby("nome_jogador").mean(numeric_only=True)
    return grouped

features = features_por_jogador()
stats = stats_por_jogo()

def nome_bonito(col):
    mapa = {
        "passes_totais": "Passes Totais",
        "passes_certos": "Passes Certos",
        "chances_criadas": "Chances Criadas",
        "desarmes": "Desarmes",
        "interceptacoes": "Interceptações",
        "bloqueios": "Bloqueios",
        "posse_ganha": "Posse Ganha",
        "posse_perdida": "Posse Perdida",
        "chutes_tentados": "Chutes Tentados",
        "chutes_no_gol": "Chutes no Gol",
        "boas_chances": "Boas Chances",
        "boas_chances_convertidas": "Boas Chances Convertidas",
        "dribles_tentados": "Dribles Tentados",
        "dribles": "Dribles",
        "dribles_sofridos_tentados": "Tentativas de Dribles Sofridos",
        "dribles_sofridos": "Dribles Sofridos",
        "gols": "Gols",
        "assists": "Assistências",
        "pre_ast": "Pré-Assistências",
        "tentativas_defesa": "Tentativas de Defesa",
        "defesas": "Defesas",
        "tentativas_defesas_dificies": "Tentativas Difíceis",
        "defesas_dificies": "Defesas Difíceis",
        "pct_defesas": "% de Defesas",
        "pct_defesas_dificeis": "% de Defesas Difíceis",
        "eficiencia_goleiro": "Eficiência do Goleiro",
        "pct_passes": "% de Passes Certos",
        "pct_chutes": "% de Chutes no Gol",
        "pct_dribles": "% de Sucesso no Drible",
        "pct_defesas": "% de Defesas",
        "nota": "Nota Média",
        "Ataque": "Ataque",
        "Criação": "Criação",
        "Passe": "Passe",
        "Defesa": "Defesa",
        "Drible": "Drible",
    }
    
    return mapa.get(col, col)