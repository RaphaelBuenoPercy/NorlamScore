import streamlit as st
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

from backend import *

st.markdown("""
<style>
h2 {
    margin-top: 2rem !important;
    margin-bottom: 2rem !important;
}
</style>
""", unsafe_allow_html=True)

st.set_page_config(layout="wide")







st.title("📊 Estatísticas do Campeonato")

tab1, tab2 = st.tabs(["📊 Dashboard", "📈 Gráficos XY"])

with tab1:
    # TODO seu código atual aqui
    jogadores = df["nome_jogador"].unique()

    jogador = st.selectbox("Escolha o jogador", jogadores)

    badge = badge_jogador(jogador)

    st.markdown(
        f"""
        <div style='text-align:center; font-size:18px'>
            {badge_formatado(badge)}
        </div>
        """,
        unsafe_allow_html=True
    )


    if eh_goleiro(jogador):
        st.subheader("🧤 Estatísticas de Goleiro")
    else:
        st.subheader("📊 Estatísticas de Linha")

    col1, col2 = st.columns(2)


    with col1:
        st.markdown(
            "<h3 style='text-align:center'>Totais</h3>",
            unsafe_allow_html=True
        )

        totais = stats_total(jogador)

        cols = st.columns(4)

        for i, (stat, valor) in enumerate(totais.items()):
            cols[i % 4].metric(nome_bonito(stat), int(valor))

    with col2:
        st.markdown(
            "<h3 style='text-align:center'>Médias</h3>",
            unsafe_allow_html=True
        )

        med = medias(jogador)

        cols = st.columns(4)

        for i, (stat, valor) in enumerate(med.items()):
            cols[i % 4].metric(nome_bonito(stat), round(valor, 2))

        nota = nota_media(jogador)
        st.markdown(
            f"**Nota Média:** :{cor_nota(nota)}[{nota:.2f}]"
        )


    st.divider()



    st.subheader("Eficiência")

    col1, col2 = st.columns(2)

    ef = eficiencia_avancada(jogador)

    items = list(ef.items())

    for i in range(len(items)):
        col = col1 if i % 2 == 0 else col2
        
        nome, valor = items[i]
        
        col.write(nome.replace("_", " ").title())
        col.progress(min(valor, 1.0))
        col.write(f"{valor*100:.1f}%")

    if eh_goleiro(jogador):
        st.subheader("🧤 Eficiência do Goleiro")
        
        gk = stats_goleiro_avancado(jogador)
        
        for nome, valor in gk.items():
            st.write(nome_bonito(nome))
            st.progress(min(valor, 1.0))
            st.write(f"{valor*100:.1f}%")




    st.divider()




    st.subheader("Análise por jogo")

    jogos = get_jogador(jogador)

    jogos = get_jogador(jogador).copy()

    jogos["label"] = jogos.apply(label_jogo, axis=1)

    jogo_escolhido = st.selectbox(
        "Escolha o jogo",
        jogos["label"]
    )

    jogo = jogos[jogos["label"] == jogo_escolhido]

    nota = nota_jogo(jogo.iloc[0])
    st.markdown(
        f"**Nota no jogo:** :{cor_nota(nota)}[{nota:.2f}]"
    )

    if eh_goleiro(jogador):
        stats_jogo = jogo[colunas_goleiro()].iloc[0]
    else:
        stats_jogo = jogo[colunas_linha()].iloc[0]

    cols = st.columns(4)

    for i, (stat, valor) in enumerate(stats_jogo.items()):
        cols[i % 4].metric(nome_bonito(stat), int(valor))


    st.divider()

    st.subheader("⚔️ Comparação")

    jogador2 = st.selectbox(
        "Comparar com", 
        jogadores,
        key="select_comparacao1"
    )



    if eh_goleiro(jogador) != eh_goleiro(jogador2):
        st.warning("⚠️ Compare apenas jogadores da mesma posição (linha vs linha ou goleiro vs goleiro).")
        st.stop()

    if jogador != jogador2:
        b1 = badge_jogador(jogador)
        b2 = badge_jogador(jogador2)

        c1, c2 = st.columns(2)

        #badge1_html = badge_formatado(b1)

        #st.markdown(
            #f"""
            #<div style='text-align:center; font-size:18px'>
            #{   badge1_html}
            #</div>
            #""",
            #unsafe_allow_html=True
        #)

        #badge2_html = badge_formatado(b2)

        #st.markdown(
            #f"""
            #<div style='text-align:center; font-size:18px'>
            #{   badge2_html}
            #</div>
            #""",
            #unsafe_allow_html=True
        #)

        c1.markdown(
            f"<div style='text-align:center'><b>{jogador}</b><br>{badge_formatado(b1)}</div>",
            unsafe_allow_html=True
        )

        c2.markdown(
            f"<div style='text-align:center'><b>{jogador2}</b><br>{badge_formatado(b2)}</div>",
            unsafe_allow_html=True
        )

        j1 = stats_total(jogador)
        j2 = stats_total(jogador2)

        stats = list(j1.index)

        n1 = nota_media(jogador)
        n2 = nota_media(jogador2)

        stats = ["nota_media"] + list(j1.index)


        # divide em blocos de 3
        for i in range(0, len(stats), 3):
            cols = st.columns(3)

            for j in range(3):
                if i + j >= len(stats):
                    continue

                stat = stats[i + j]

                if stat == "nota_media":
                    nome = "Nota Média"
                    v1 = n1
                    v2 = n2
                else:
                    nome = nome_bonito(stat)
                    v1 = j1.get(stat, 0)
                    v2 = j2.get(stat, 0)

                cor1 = "green" if v1 >= v2 else "red" if v1 < v2 else "gray"
                cor2 = "green" if v2 >= v1 else "red" if v2 < v1 else "gray"

                with cols[j]:
                    st.markdown(f"<div style='text-align:center; font-weight:600'>{nome}</div>", unsafe_allow_html=True)

                    c1, c2 = st.columns([1,1])

                    c1.markdown(
                    f"<div style='text-align:center'>{jogador}<br><span style='color:{cor1}'>{round(v1,2)}</span></div>",
                    unsafe_allow_html=True
                    )

                    c2.markdown(
                    f"<div style='text-align:center'>{jogador2}<br><span style='color:{cor2}'>{round(v2,2)}</span></div>",
                    unsafe_allow_html=True
                    )







    st.divider()
    st.subheader("Comparação (Radar)")

    if jogador != jogador2:
        fig = radar_comparar_plotly(jogador, jogador2)

        if fig:
            with st.spinner("Gerando comparação..."):
                col1, col2, col3 = st.columns([1,3,1])

                with col2:
                    st.plotly_chart(
                    fig,
                    config={"responsive": True}
                    )
        
    else:
        st.write("Escolha outro jogador para comparar")














    if eh_goleiro(jogador):
        opcoes_stats = [
            "defesas",
            "tentativas_defesa",
            "pct_defesas",
            "nota"
        ]
    else:
        opcoes_stats = [
            "gols",
            "assists",
            "chances_criadas",
            "passes_totais",
            "desarmes",
            "pct_passes",
            "pct_chutes",
            "pct_dribles",
            "nota"
        ]

    st.divider()
    st.subheader("📊 Ranking por Estatística")

    stat_escolhida = st.selectbox(
        "Estatística",
        opcoes_stats,
        format_func=nome_bonito
    )

    ranking = ranking_por_stat(stat_escolhida)

    # remove zeros e NaN
    ranking = ranking.replace([float("inf"), -float("inf")], 0)
    ranking = ranking.fillna(0)
    ranking = ranking[ranking > 0]

    itens = list(ranking.items())[:15]  # limita top 15

    for i in range(0, len(itens), 3):
        cols = st.columns(3)

        for j in range(3):
            if i + j >= len(itens):
                continue

            nome, valor = itens[i + j]
            pos = i + j + 1

            medalha = "🥇" if pos == 1 else "🥈" if pos == 2 else "🥉" if pos == 3 else ""

            cols[j].markdown(
                f"""
                <div style='text-align:center; font-size:14px'>
                    {medalha} <b>{pos}. {nome}</b><br>
                    <span style='font-size:13px'>{round(valor,2)}</span>
                </div>
                """,
                unsafe_allow_html=True
            )


    st.divider()
    st.subheader("🏆 Rankings")

    col1, col2, col3 = st.columns(3)

    def mostrar_ranking(titulo, serie, coluna):
        coluna.markdown(f"### {titulo}")
        
        for i, (nome, valor) in enumerate(serie.items()):
            medalha = ""
            
            if i == 0:
                medalha = "🥇"
            elif i == 1:
                medalha = "🥈"
            elif i == 2:
                medalha = "🥉"
            
            coluna.markdown(f"{medalha} **{i+1}. {nome}** — {valor}")

    mostrar_ranking("Gols", ranking_gols(), col1)
    mostrar_ranking("Assistências", ranking_assists(), col2)
    mostrar_ranking("MVP", ranking_mvp(), col3)
    mostrar_ranking("Nota Média", ranking_nota().round(2), col3)

with tab2:
    st.subheader("📈 Análises Comparativas (XY)")
    import plotly.express as px

    features = features_por_jogador()

    df_plot = features.join(stats, how="inner")
    df_plot["jogador"] = df_plot.index

    fig = px.scatter(
        df_plot,
        x="Criação",
        y="Ataque",
        text="jogador",
        title="Criação vs Ataque"
    )

    fig.update_traces(textposition="top center")

    st.plotly_chart(
        fig,
        config={"displayModeBar": False}
    )

    col1, col2 = st.columns(2)

    opcoes = list(df_plot.columns)
    opcoes.remove("jogador")

    col1, col2 = st.columns(2)

    x_axis = col1.selectbox("Eixo X", opcoes, index=0)
    y_axis = col2.selectbox("Eixo Y", opcoes, index=1)

    df_plot["x_jitter"] = df_plot[x_axis] + np.random.normal(0, 0.01, len(df_plot))
    df_plot["y_jitter"] = df_plot[y_axis] + np.random.normal(0, 0.01, len(df_plot))

    color_map = {
        "delta": "blue",
        "alfa": "white",
        "bravo": "black",
        "charlie": "red"
    }


    mapa_times = {
    "Fernando": "charlie",
    "Gabigol": "charlie",
    "Arnaldo": "charlie",
    "B.Simões": "charlie",
    "Jeffinho": "charlie",
    "Bezin": "charlie",
    "Danni": "charlie",
    "Alan": "alfa",
    "Granja": "alfa",
    "Artur": "alfa",
    "Baroni": "alfa",
    "L.Marcelo": "alfa",
    "Nicolas": "alfa",
    "Renan Emerique": "delta",
    "Percy": "delta",
    "Eduardo": "delta",
    "Renan Delgado": "delta",
    "Zachi": "delta",
    "Bruno": "delta",
    "Japa": "delta",
    "Vitão": "bravo",
    "Alleck": "bravo",
    "Bebrabo": "bravo",
    "Gigio": "bravo",
    "Gui Simões": "bravo",
    "Gustavo": "bravo",
    "Matheuzinho": "bravo",

    # adiciona todos
    }

    df_plot["time"] = df_plot["jogador"].map(mapa_times)

    fig = px.scatter(
        df_plot,
        x=x_axis,
        y=y_axis,
        color="time",
        text="jogador",
        color_discrete_map=color_map,
        hover_name="jogador",  # 👈 melhor UX
        title=f"{nome_bonito(x_axis)} vs {nome_bonito(y_axis)}"
    )

    fig.update_traces(
        textposition="top center",
        marker=dict(
            size=10,
            opacity=0.9,
            line=dict(width=1, color="white")  # 👈 contorno branco
        )
    )

    fig.update_layout(
        xaxis_title=nome_bonito(x_axis),
        yaxis_title=nome_bonito(y_axis),

        plot_bgcolor="#2b2b2b",   # 👈 cinza escuro (melhor contraste)
        paper_bgcolor="#2b2b2b",

        font=dict(color="white")
    )

    st.plotly_chart(fig, config={"displayModeBar": False})



