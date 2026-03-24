# JOGO 1 - Bravo x Charlie (1 RODADA) (Bravo) ja foi

novo_jogo <- data.frame(
  id_jogo = 1,
  fase = "Grupos",
  rodada = 1,
  placar_time = 7,
  placar_adv = 1,
  time = "Bravo",
  
  id_jogador = c(15, 16, 17, 18, 19, 20, 21),
  nome_jogador = c("Vitão", "Alleck", "Bebrabo", "Gigio", "Gui Simões", "Gustavo", "Matheuzinho"),
  posicao = c("GOL", "Fixo", "Ala", "Ala", "Meia", "Atacante", "Meia"),
  passes_totais = c(24, 22, 25, 29, 21, 5, 12),
  passes_certos = c(21, 16, 24, 20, 15, 3, 10),
  chances_criadas = c(0, 0, 3, 4, 1, 0, 1),
  desarmes = c(0, 6, 1, 2, 2, 0, 2),
  interceptacoes = c(0, 2, 1, 0, 0, 1, 1),
  bloqueios = c(0, 10, 5, 4, 4, 5, 1),
  posse_ganha = c(1, 6, 7, 3, 5, 4, 3),
  posse_perdida = c(1, 5, 6, 4, 7, 2, 1),
  tentativas_defesa = c(5, 0, 0, 0, 0, 0, 0),
  defesas = c(4, 0, 0, 0, 0, 0, 0),
  tentativas_defesas_dificies = c(2, 0, 0, 0, 0, 0, 0),
  defesas_dificies = c(1, 0, 0, 0, 0, 0, 0),
  chutes_tentados = c(0, 1, 2, 6, 7, 1, 0),
  chutes_no_gol = c(0, 0, 1, 6, 3, 0, 0),
  boas_chances = c(0, 0, 0, 4, 4, 1, 1),
  boas_chances_convertidas = c(0, 0, 0, 2, 2, 0, 0),
  dribles_tentados = c(0, 3, 6, 3, 5, 2, 0),
  dribles = c(0, 2, 3, 1, 3, 1, 0),
  dribles_sofridos_tentados = c(0, 4, 0, 1, 4, 1, 1),
  dribles_sofridos = c(0, 2, 0, 0, 2, 1, 0),
  gols = c(0, 0, 1, 4, 2, 0, 0),
  assists = c(0, 0, 1, 0, 2, 1, 1),
  pre_ast = c(0, 0, 0, 0, 1, 0, 0),
  stringsAsFactors = FALSE
)

estatisticas_jogos <- rbind(estatisticas_jogos, novo_jogo)

# JOGO 1 - Bravo x Charlie (1 RODADA) (Charlie) ja foi

novo_jogo <- data.frame(
  id_jogo = 1,
  fase = "Grupos",
  rodada = 1,
  placar_time = 1,
  placar_adv = 7,
  time = "Charlie",
  
  id_jogador = c(22, 23, 24, 25, 26, 27, 28),
  nome_jogador = c("Fernando", "Gabigol", "Arnaldo", "B.Simões", "Jeffinho", "Bezin", "Danni"),
  posicao = c("GOL", "Fixo", "Fixo", "Meia", "Meia", "Pivô", "Atacante"),
  passes_totais = c(19, 15, 11, 27, 7, 15, 1),
  passes_certos = c(13, 12, 9, 19, 3, 10, 1),
  chances_criadas = c(0, 3, 0, 2, 0, 2, 0),
  desarmes = c(0, 2, 0, 2, 1, 3, 1),
  interceptacoes = c(0, 3, 2, 2, 0, 0, 0),
  bloqueios = c(1, 7, 11, 8, 0, 2, 1),
  posse_ganha = c(1, 4, 3, 7, 2, 5, 0),
  posse_perdida = c(3, 4, 3, 8, 2, 13, 0),
  tentativas_defesa = c(9, 0, 0, 0, 0, 0, 0),
  defesas = c(3, 0, 0, 0, 0, 0, 0),
  tentativas_defesas_dificies = c(7, 0, 0, 0, 0, 0, 0),
  defesas_dificies = c(2, 0, 0, 0, 0, 0, 0),
  chutes_tentados = c(0, 2, 3, 4, 1, 6, 0),
  chutes_no_gol = c(0, 1, 1, 2, 0, 3, 0),
  boas_chances = c(0, 0, 1, 1, 0, 5, 0),
  boas_chances_convertidas = c(0, 0, 0, 0, 0, 1, 0),
  dribles_tentados = c(0, 1, 0, 6, 0, 5, 0),
  dribles = c(0, 1, 0, 3, 0, 1, 0),
  dribles_sofridos_tentados = c(0, 4, 3, 3, 1, 4, 3),
  dribles_sofridos = c(0, 1, 1, 2, 1, 2, 2),
  gols = c(0, 0, 0, 0, 0, 1, 0),
  assists = c(0, 0, 0, 1, 0, 0, 0),
  pre_ast = c(0, 0, 0, 0, 1, 0, 0),
  stringsAsFactors = FALSE
)

estatisticas_jogos <- rbind(estatisticas_jogos, novo_jogo)






# Jogo 2 - Alfa x Delta (1 RODADA) (Alfa) feito

novo_jogo <- data.frame(
  id_jogo = 2,
  fase = "Grupos",
  rodada = 1,
  placar_time = 1,
  placar_adv = 1,
  time = "Alfa",
  
  id_jogador = c(8, 9, 10, 11, 12, 13, 14),
  nome_jogador = c("Alan", "Baroni", "Granja", "Artur", "L.Marcelo", "G.Mateus", "Nicolas"),
  posicao = c("GOL", "Fixo", "Fixo", "Fixo", "Atacante", "Meia", "Ala"),
  passes_totais = c(21, 23, 11, 26, 14, 15, 10),
  passes_certos = c(20, 19, 10, 17, 7, 12, 9),
  chances_criadas = c(0, 1, 1, 0, 0, 0, 0),
  desarmes = c(0, 2, 0, 0, 0, 3, 1),
  interceptacoes = c(0, 3, 0, 1, 0, 0, 0),
  bloqueios = c(1, 4, 1, 6, 3, 2, 3),
  posse_ganha = c(1, 6, 0, 1, 1, 7, 4),
  posse_perdida = c(1, 2, 1, 6, 3, 5, 3),
  tentativas_defesa = c(1, 0, 0, 0, 0, 0, 1),
  defesas = c(0, 0, 0, 0, 0, 0, 1),
  tentativas_defesas_dificies = c(1, 0, 0, 0, 0, 0, 1),
  defesas_dificies = c(0, 0, 0, 0, 0, 0, 1),
  chutes_tentados = c(0, 2, 1, 4, 2, 0, 0),
  chutes_no_gol = c(0, 0, 0, 0, 1, 0, 0),
  boas_chances = c(0, 0, 0, 0, 1, 0, 0),
  boas_chances_convertidas = c(0, 0, 0, 0, 1, 0, 0),
  dribles_tentados = c(0, 1, 0, 1, 2, 8, 6),
  dribles = c(0, 1, 0, 0, 1, 4, 3),
  dribles_sofridos_tentados = c(0, 4, 0, 1, 0, 2, 4),
  dribles_sofridos = c(0, 2, 0, 1, 0, 1, 2),
  gols = c(0, 0, 0, 0, 1, 0, 0),
  assists = c(0, 0, 1, 0, 0, 0, 0),
  pre_ast = c(0, 0, 0, 0, 0, 0, 0),
  stringsAsFactors = FALSE
)

estatisticas_jogos <- rbind(estatisticas_jogos, novo_jogo)

# JOGO 2 - Alfa x Delta (1 RODADA) (Delta) feito

novo_jogo <- data.frame(
    id_jogo = 2,
    fase = "Grupos",
    rodada = 1,
    placar_time = 1,
    placar_adv = 1,
    time = "Delta",
    
    id_jogador = c(1, 2, 3, 4, 5, 6),
    nome_jogador = c("Renan Emerique", "Percy", "Eduardo", "Renan Delgado", "Zachi", "Bruno"),
    posicao = c("GOL", "Meia", "Fixo", "Ala", "Atacante", "Meia"),
    passes_totais = c(17, 15, 22, 16, 11, 2),
    passes_certos = c(13, 13, 18, 12, 8,2),
    chances_criadas = c(0, 1, 1, 0, 0, 0),
    desarmes = c(0, 1, 0, 2, 2, 0),
    interceptacoes = c(0, 1, 1, 0, 0, 0),
    bloqueios = c(1, 5, 5, 14, 5, 2),
    posse_ganha = c(1, 2, 0, 1, 4, 3),
    posse_perdida = c(1, 5, 2, 2, 9, 4),
    tentativas_defesa = c(1, 0, 0, 0, 0, 0),
    defesas = c(0, 0, 0, 0, 0, 0),
    tentativas_defesas_dificies = c(1, 0, 0, 0, 0, 0),
    defesas_dificies = c(0, 0, 0, 0, 0, 0),
    chutes_tentados = c(0, 0, 0, 1, 7, 1),
    chutes_no_gol = c(0, 0, 0, 0, 1, 0),
    boas_chances = c(0, 0, 0, 1, 0, 1),
    boas_chances_convertidas = c(0, 0, 0, 1, 0, 0),
    dribles_tentados = c(0, 1, 1, 0, 10, 0),
    dribles = c(0, 0, 1, 0, 5, 0),
    dribles_sofridos_tentados = c(0, 1, 0, 2, 4, 1),
    dribles_sofridos = c(0, 0, 0, 0, 2, 2),
    gols = c(0, 0, 0, 1, 0, 0),
    assists = c(0, 1, 0, 0, 0, 0),
    pre_ast = c(0, 0, 0, 0, 1, 0),
    stringsAsFactors = FALSE
)

estatisticas_jogos <- rbind(estatisticas_jogos, novo_jogo)










































# JOGO 3 - Alfa x Bravo (2 RODADA) (Alfa) ja foi

novo_jogo <- data.frame(
  id_jogo = 3,
  fase = "Grupos",
  rodada = 2,
  placar_time = 5,
  placar_adv = 6,
  time = "Alfa",
  
  id_jogador = c(8, 9, 10, 11, 12, 13, 14),
  nome_jogador = c("Alan", "Baroni", "Granja", "Artur", "L.Marcelo", "G.Mateus", "Nicolas"),
  posicao = c("GOL", "Fixo", "Fixo", "Fixo", "Atacante", "Meia", "Ala"),
  passes_totais = c(24, 13, 10, 14, 7, 12, 9),
  passes_certos = c(17, 11, 5, 10, 5, 7, 9),
  chances_criadas = c(2, 3, 1, 1, 0, 0, 1),
  desarmes = c(0, 0, 2, 0, 2, 0, 2),
  interceptacoes = c(2, 4, 2, 4, 4, 1, 2),
  bloqueios = c(0, 2, 1, 2, 1, 1, 1),
  posse_ganha = c(2, 5, 2, 5, 4, 2, 5),
  posse_perdida = c(3, 0, 2, 3, 6, 4, 5),
  tentativas_defesa = c(15, 0, 0, 0, 0, 0, 0),
  defesas = c(9, 0, 0, 0, 0, 0, 0),
  tentativas_defesas_dificies = c(8, 0, 0, 0, 0, 0, 0),
  defesas_dificies = c(4, 0, 0, 0, 0, 0, 0),
  chutes_tentados = c(0, 2, 3, 2, 1, 4, 6),
  chutes_no_gol = c(0, 0, 0, 1, 0, 0, 5),
  boas_chances = c(0, 0, 0, 1, 0, 0, 4),
  boas_chances_convertidas = c(0, 0, 0, 0, 0, 0, 3),
  dribles_tentados = c(1, 4, 1, 3, 0, 12, 7),
  dribles = c(0, 2, 1, 2, 0, 7, 6),
  dribles_sofridos_tentados = c(0, 1, 0, 3, 0, 6, 3),
  dribles_sofridos = c(0, 1, 0, 3, 0, 6, 2),
  gols = c(0, 1, 1, 0, 0, 0, 3),
  assists = c(2, 0, 1, 0, 1, 0, 1),
  pre_ast = c(0, 0, 1, 0, 0, 0, 0),
  stringsAsFactors = FALSE
)

estatisticas_jogos <- rbind(estatisticas_jogos, novo_jogo)

# JOGO 3 - Alfa x Bravo (2 RODADA) (Bravo) ja foi

novo_jogo <- data.frame(
  id_jogo = 3,
  fase = "Grupos",
  rodada = 2,
  placar_time = 6,
  placar_adv = 5,
  time = "Bravo",
  
  id_jogador = c(15, 16, 17, 18, 19, 20, 21),
  nome_jogador = c("Vitão", "Alleck", "Bebrabo", "Gigio", "Gui Simões", "Gustavo", "Matheuzinho"),
  posicao = c("GOL", "Fixo", "Ala", "Ala", "Meia", "Atacante", "Meia"),
  passes_totais = c(20, 19, 19, 15, 27, 13, 10),
  passes_certos = c(17, 13, 16, 13, 18, 12, 9),
  chances_criadas = c(2, 1, 1, 5, 1, 3, 0),
  desarmes = c(0, 2, 3, 4, 4, 1, 1),
  interceptacoes = c(1, 3, 2, 2, 2, 1, 4),
  bloqueios = c(0, 3, 0, 0, 1, 1, 0),
  posse_ganha = c(2, 5, 5, 5, 7, 4, 4),
  posse_perdida = c(3, 3, 5, 4, 7, 0, 2),
  tentativas_defesa = c(9, 0, 0, 0, 0, 0, 0),
  defesas = c(4, 0, 0, 0, 0, 0, 0),
  tentativas_defesas_dificies = c(8, 0, 0, 0, 0, 0, 0),
  defesas_dificies = c(4, 0, 0, 0, 0, 0, 0),
  chutes_tentados = c(0, 4, 8, 5, 12, 2, 2),
  chutes_no_gol = c(0, 3, 6, 4, 5, 1, 1),
  boas_chances = c(0, 2, 3, 3, 4, 1, 1),
  boas_chances_convertidas = c(0, 2, 0, 1, 1, 0, 1),
  dribles_tentados = c(0, 4, 6, 3, 15, 1, 3),
  dribles = c(0, 3, 5, 1, 11, 0, 2),
  dribles_sofridos_tentados = c(0, 2, 2, 4, 1, 1, 1),
  dribles_sofridos = c(0, 2, 2, 4, 1, 0, 1),
  gols = c(0, 2, 0, 1, 1, 0, 1),
  assists = c(1, 1, 1, 1, 0, 1, 0),
  pre_ast = c(2, 0, 0, 0, 0, 0, 0),
  stringsAsFactors = FALSE
)

estatisticas_jogos <- rbind(estatisticas_jogos, novo_jogo)






# Jogo 4 - Charlie x Delta (Charlie) ja foi

novo_jogo <- data.frame(
  id_jogo = 4,
  fase = "Grupos",
  rodada = 2,
  placar_time = 3,
  placar_adv = 2,
  time = "Charlie",
  
  id_jogador = c(22, 23, 24, 25, 26, 27, 28),
  nome_jogador = c("Fernando", "Gabigol", "Arnaldo", "B.Simões", "Jeffinho", "Bezin", "Danni"),
  posicao = c("GOL", "Fixo", "Fixo", "Meia", "Meia", "Pivô", "Atacante"),
  passes_totais = c(22, 21, 24, 27, 13, 18, 1),
  passes_certos = c(17, 17, 19, 23, 11, 12, 1),
  chances_criadas = c(0, 0, 0, 0, 0, 1, 0),
  desarmes = c(0, 2, 1, 1, 0, 1, 0),
  interceptacoes = c(1, 0, 2, 1, 0, 1, 0),
  bloqueios = c(0, 13, 5, 3, 4, 6, 0),
  posse_ganha = c(2, 4, 4, 7, 1, 5, 0),
  posse_perdida = c(3, 2, 4, 6, 3, 7, 0),
  tentativas_defesa = c(12, 0, 0, 0, 0, 0, 0),
  defesas = c(10, 0, 0, 0, 0, 0, 0),
  tentativas_defesas_dificies = c(9, 0, 0, 0, 0, 0, 0),
  defesas_dificies = c(7, 0, 0, 0, 0, 0, 0),
  chutes_tentados = c(0, 4, 4, 1, 1, 7, 0),
  chutes_no_gol = c(0, 1, 1, 0, 0, 1, 0),
  boas_chances = c(0, 1, 1, 1, 0, 2, 0),
  boas_chances_convertidas = c(0, 1, 0, 0, 0, 1, 0),
  dribles_tentados = c(0, 0, 0, 8, 0, 7, 0),
  dribles = c(0, 0, 0, 4, 0, 6, 0),
  dribles_sofridos_tentados = c(0, 4, 2, 7, 1, 4, 2),
  dribles_sofridos = c(0, 1, 1, 6, 1, 2, 1),
  gols = c(0, 2, 0, 0, 0, 1, 0),
  assists = c(0, 0, 0, 0, 0, 2, 0),
  pre_ast = c(0, 0, 0, 1, 0, 0, 0),
  stringsAsFactors = FALSE
)

estatisticas_jogos <- rbind(estatisticas_jogos, novo_jogo)

# JOGO 4 - Charlie x Delta (Delta) ja foi

novo_jogo <- data.frame(
  id_jogo = 4,
  fase = "Grupos",
  rodada = 2,
  placar_time = 2,
  placar_adv = 3,
  time = "Delta",
  
  id_jogador = c(1, 2, 3, 4, 5, 6, 7),
  nome_jogador = c("Renan Emerique", "Percy", "Eduardo", "Renan Delgado", "Zachi", "Bruno", "Japa"),
  posicao = c("GOL", "Meia", "Fixo", "Ala", "Atacante", "Meia", "Meia"),
  passes_totais = c(24, 31, 27, 30, 21, 5, 14),
  passes_certos = c(22, 23, 21, 25, 16, 4, 9),
  chances_criadas = c(0, 0, 0, 0, 1, 0, 1),
  desarmes = c(0, 1, 1, 0, 0, 0, 0),
  interceptacoes = c(0, 1, 1, 0, 1, 0, 0),
  bloqueios = c(1, 6, 5, 3, 3, 2, 1),
  posse_ganha = c(3, 9, 6, 4, 1, 0, 4),
  posse_perdida = c(3, 5, 5, 4, 5, 1, 5),
  tentativas_defesa = c(2, 0, 0, 0, 0, 0, 0),
  defesas = c(1, 0, 0, 0, 0, 0, 0),
  tentativas_defesas_dificies = c(1, 0, 0, 0, 0, 0, 0),
  defesas_dificies = c(0, 0, 0, 0, 0, 0, 0),
  chutes_tentados = c(0, 3, 2, 5, 7, 3, 3),
  chutes_no_gol = c(0, 2, 0, 3, 3, 3, 2),
  boas_chances = c(0, 1, 0, 0, 3, 1, 0),
  boas_chances_convertidas = c(0, 1, 0, 0, 1, 0, 0),
  dribles_tentados = c(0, 10, 0, 3, 6, 2, 2),
  dribles = c(0, 8, 0, 2, 3, 1, 2),
  dribles_sofridos_tentados = c(0, 4, 5, 2, 0, 2, 2),
  dribles_sofridos = c(0, 1, 4, 1, 0, 2, 2),
  gols = c(0, 1, 0, 0, 1, 0, 0),
  assists = c(0, 0, 0, 0, 0, 0, 0),
  pre_ast = c(0, 0, 0, 0, 0, 0, 0),
  stringsAsFactors = FALSE
)

estatisticas_jogos <- rbind(estatisticas_jogos, novo_jogo)





















































# Agora só falta as estatísticas dos jogos da terceira rodada e semifinal. 3 Lugar e Final já foi


# JOGO 5 - Alfa x Charlie (3 RODADA) (Alfa) ja foi

novo_jogo <- data.frame(
  id_jogo = 5,
  fase = "Grupos",
  rodada = 3,
  placar_time = 0,
  placar_adv = 2,
  time = "Alfa",
  
  id_jogador = c(8, 9, 10, 11, 12, 13, 14),
  nome_jogador = c("Alan", "Baroni", "Granja", "Artur", "L.Marcelo", "G.Mateus", "Nicolas"),
  posicao = c("GOL", "Fixo", "Fixo", "Fixo", "Atacante", "Meia", "Ala"),
  passes_totais = c(19, 16, 8, 18, 4, 19, 19),
  passes_certos = c(18, 16, 7, 13, 3, 13, 14),
  chances_criadas = c(0, 1, 0, 0, 0, 0, 1),
  desarmes = c(0, 2, 1, 0, 0, 0, 0),
  interceptacoes = c(1, 2, 1, 1, 0, 0, 0),
  bloqueios = c(1, 2, 5, 4, 1, 2, 2),
  posse_ganha = c(2, 4, 6, 4, 1, 1, 1),
  posse_perdida = c(2, 2, 1, 5, 2, 9, 6),
  tentativas_defesa = c(7, 0, 0, 0, 0, 0, 0),
  defesas = c(5, 0, 0, 0, 0, 0, 0),
  tentativas_defesas_dificies = c(6, 0, 0, 0, 0, 0, 0),
  defesas_dificies = c(5, 0, 0, 0, 0, 0, 0),
  chutes_tentados = c(0, 0, 1, 3, 1, 8, 2),
  chutes_no_gol = c(0, 0, 0, 1, 1, 4, 2),
  boas_chances = c(0, 0, 0, 0, 1, 1, 1),
  boas_chances_convertidas = c(0, 0, 0, 0, 0, 0, 0),
  dribles_tentados = c(0, 1, 1, 2, 0, 9, 8),
  dribles = c(0, 1, 1, 0, 0, 5, 6),
  dribles_sofridos_tentados = c(0, 0, 4, 0, 0, 0, 1),
  dribles_sofridos = c(0, 0, 4, 0, 0, 0, 0),
  gols = c(0, 0, 0, 0, 0, 0, 0),
  assists = c(0, 0, 0, 0, 0, 0, 0),
  pre_ast = c(0, 0, 0, 0, 0, 0, 0),
  stringsAsFactors = FALSE
)


estatisticas_jogos <- rbind(estatisticas_jogos, novo_jogo)




# JOGO 5 - Alfa x Charlie (3 RODADA) (Charlie) ja foi

novo_jogo <- data.frame(
  id_jogo = 5,
  fase = "Grupos",
  rodada = 3,
  placar_time = 2,
  placar_adv = 0,
  time = "Charlie",
  
  id_jogador = c(22, 23, 24, 25, 26, 27, 28),
  nome_jogador = c("Fernando", "Gabigol", "Arnaldo", "B.Simões", "Jeffinho", "Bezin", "Danni"),
  posicao = c("GOL", "Fixo", "Fixo", "Meia", "Meia", "Pivô", "Atacante"),
  passes_totais = c(17, 24, 12, 17, 7, 11, 3),
  passes_certos = c(14, 23, 8, 13, 4, 7, 2),
  chances_criadas = c(0, 0, 0, 0, 0, 1, 1),
  desarmes = c(0, 0, 2, 3, 0, 1, 0),
  interceptacoes = c(0, 3, 1, 2, 0, 1, 0),
  bloqueios = c(0, 7, 6, 4, 4, 0, 1),
  posse_ganha = c(3, 3, 5, 6, 1, 1, 0),
  posse_perdida = c(0, 0, 4, 3, 2, 3, 2),
  tentativas_defesa = c(3, 0, 0, 0, 0, 0, 0),
  defesas = c(3, 0, 0, 0, 0, 0, 0),
  tentativas_defesas_dificies = c(2, 0, 0, 0, 0, 0, 0),
  defesas_dificies = c(2, 0, 0, 0, 0, 0, 0),
  chutes_tentados = c(0, 2, 2, 4, 2, 5, 1),
  chutes_no_gol = c(0, 1, 1, 2, 0, 4, 1),
  boas_chances = c(0, 0, 0, 0, 1, 1, 0),
  boas_chances_convertidas = c(0, 0, 0, 0, 0, 0, 0),
  dribles_tentados = c(0, 0, 0, 2, 0, 4, 0),
  dribles = c(0, 0, 0, 1, 0, 4, 0),
  dribles_sofridos_tentados = c(0, 1, 6, 5, 2,5, 1),
  dribles_sofridos = c(0, 0, 4, 2, 2, 3, 1),
  gols = c(0, 1, 0, 0, 0, 0, 1),
  assists = c(0, 0, 0, 0, 1, 1, 0),
  pre_ast = c(0, 1, 1, 0, 0, 0, 0),
  stringsAsFactors = FALSE
)

estatisticas_jogos <- rbind(estatisticas_jogos, novo_jogo)







# Jogo 6 - Bravo x Delta (3 RODADA) (Bravo) ja foi

novo_jogo <- data.frame(
  id_jogo = 6,
  fase = "Grupos",
  rodada = 3,
  placar_time = 6,
  placar_adv = 1,
  time = "Bravo",
  
  id_jogador = c(15, 16, 17, 18, 19, 20, 21),
  nome_jogador = c("Vitão", "Alleck", "Bebrabo", "Gigio", "Gui Simões", "Gustavo", "Matheuzinho"),
  posicao = c("GOL", "Fixo", "Ala", "Ala", "Meia", "Atacante", "Meia"),
  passes_totais = c(22, 29, 33, 22, 37, 17, 9),
  passes_certos = c(21, 25, 27, 15, 29, 14, 6),
  chances_criadas = c(0, 1, 4, 1, 2, 0, 0),
  desarmes = c(0, 0, 1, 0, 0, 0, 0),
  interceptacoes = c(0, 0, 1, 2, 2, 1, 0),
  bloqueios = c(0, 3, 6, 5, 0, 5, 2),
  posse_ganha = c(1, 1, 5, 3, 5, 4, 2),
  posse_perdida = c(0, 4, 5, 3, 8, 2, 4),
  tentativas_defesa = c(8, 0, 0, 0, 0, 0, 0),
  defesas = c(7, 0, 0, 0, 0, 0, 0),
  tentativas_defesas_dificies = c(4, 0, 0, 0, 0, 0, 0),
  defesas_dificies = c(3, 0, 0, 0, 0, 0, 0),
  chutes_tentados = c(0, 7, 5, 2, 8, 2, 10),
  chutes_no_gol = c(0, 2, 2, 2, 3, 2, 4),
  boas_chances = c(0, 1, 0, 1, 2, 1, 1),
  boas_chances_convertidas = c(0, 0, 0, 1, 1, 1, 0),
  dribles_tentados = c(0, 0, 10, 4, 15, 0, 1),
  dribles = c(0, 0, 5, 3, 8, 0, 0),
  dribles_sofridos_tentados = c(0, 2, 5, 1, 2, 4, 2),
  dribles_sofridos = c(0, 0, 0, 0, 1, 2, 2),
  gols = c(0, 0, 1, 2, 2, 1, 0),
  assists = c(0, 1, 0, 1, 1, 0, 1),
  pre_ast = c(1, 0, 1, 0, 0, 0, 0),
  stringsAsFactors = FALSE
)

estatisticas_jogos <- rbind(estatisticas_jogos, novo_jogo)

# JOGO 6 - Bravo x Delta (3 RODADA) (Delta) Feito

novo_jogo <- data.frame(
  id_jogo = 6,
  fase = "Grupos",
  rodada = 3,
  placar_time = 1,
  placar_adv = 6,
  time = "Delta",
  
  id_jogador = c(1, 2, 3, 4, 5, 6),
  nome_jogador = c("Renan Emerique", "Percy", "Eduardo", "Renan Delgado", "Zachi", "Japa"),
  posicao = c("GOL", "Meia", "Fixo", "Ala", "Atacante", "Meia"),
  passes_totais = c(19, 23, 27, 30, 18, 15),
  passes_certos = c(16, 18, 23, 23, 12, 11),
  chances_criadas = c(0, 2, 0, 1, 0, 0),
  desarmes = c(0, 1, 7, 6, 3, 0),
  interceptacoes = c(2, 3, 4, 0, 1, 0),
  bloqueios = c(2, 10, 15, 8, 1, 1),
  posse_ganha = c(1, 5, 10, 4, 5, 3),
  posse_perdida = c(2, 6, 3, 4, 11, 10),
  tentativas_defesa = c(14, 0, 0, 0, 0, 0),
  defesas = c(8, 0, 0, 0, 0, 0),
  tentativas_defesas_dificies = c(8, 0, 0, 0, 0, 0),
  defesas_dificies = c(3, 0, 0, 0, 0, 0),
  chutes_tentados = c(0, 1, 1, 3, 7, 3),
  chutes_no_gol = c(0, 1, 0, 1, 4, 2),
  boas_chances = c(0, 0, 0, 2, 2, 1),
  boas_chances_convertidas = c(0, 0, 0, 0, 0, 0),
  dribles_tentados = c(0, 6, 1, 0, 10, 2),
  dribles = c(0, 5, 1, 0, 3, 0),
  dribles_sofridos_tentados = c(0, 5, 7, 9, 5, 4),
  dribles_sofridos = c(0, 3, 1, 4, 2, 4),
  gols = c(0, 0, 0, 0, 1, 0),
  assists = c(0, 1, 0, 0, 0, 0),
  pre_ast = c(0, 0, 0, 0, 0, 0),
  stringsAsFactors = FALSE
)

estatisticas_jogos <- rbind(estatisticas_jogos, novo_jogo)














































































# JOGO 7 - Alfa x Charlie (Semi) (Alfa)

novo_jogo <- data.frame(
  id_jogo = 7,
  fase = "Mata-Mata",
  rodada = 4,
  placar_time = 1,
  placar_adv = 6,
  time = "Alfa",
  
  id_jogador = c(8, 9, 10, 11, 12, 13, 14),
  nome_jogador = c("Alan", "Baroni", "Granja", "Artur", "L.Marcelo", "G.Mateus", "Nicolas"),
  posicao = c("GOL", "Fixo", "Fixo", "Fixo", "Atacante", "Meia", "Ala"),
  passes_totais = c(22, 28, 19, 17, 8, 22, 11),
  passes_certos = c(17, 21, 16, 12, 8, 18, 9),
  chances_criadas = c(0, 0, 0, 0, 0, 0, 1),
  desarmes = c(0, 1, 2, 0, 3, 1, 3),
  interceptacoes = c(2, 3, 2, 0, 1, 2, 1),
  bloqueios = c(8, 4, 9, 4, 4, 1, 1),
  posse_ganha = c(5, 6, 4, 2, 4, 5, 3),
  posse_perdida = c(6, 7, 2, 6, 3, 10, 3),
  tentativas_defesa = c(13, 0, 0, 0, 0, 0, 0),
  defesas = c(7, 0, 0, 0, 0, 0, 0),
  tentativas_defesas_dificies = c(8, 0, 0, 0, 0, 0, 0),
  defesas_dificies = c(3, 0, 0, 0, 0, 0, 0),
  chutes_tentados = c(0, 5, 0, 2, 4, 4, 6),
  chutes_no_gol = c(0, 2, 0, 1, 1, 2, 3),
  boas_chances = c(0, 0, 0, 0, 0, 1, 0),
  boas_chances_convertidas = c(0, 0, 0, 0, 0, 0, 0),
  dribles_tentados = c(0, 8, 0, 4, 3, 15, 9),
  dribles = c(0, 7, 0, 2, 1, 6, 5),
  dribles_sofridos_tentados = c(0, 4, 4, 2, 2, 3, 3),
  dribles_sofridos = c(0, 3, 4, 1, 0, 2, 1),
  gols = c(0, 0, 0, 0, 0, 0, 1),
  assists = c(1, 0, 0, 0, 0, 0, 0),
  pre_ast = c(0, 0, 0, 0, 0, 0, 0),
  stringsAsFactors = FALSE
)


estatisticas_jogos <- rbind(estatisticas_jogos, novo_jogo)




# JOGO 7 - Alfa x Charlie (Semi) (Charlie)

novo_jogo <- data.frame(
  id_jogo = 7,
  fase = "Mata-Mata",
  rodada = 4,
  placar_time = 6,
  placar_adv = 1,
  time = "Charlie",
  
  id_jogador = c(22, 23, 24, 25, 26, 27, 28),
  nome_jogador = c("Fernando", "Gabigol", "Arnaldo", "B.Simões", "Jeffinho", "Bezin", "Danni"),
  posicao = c("GOL", "Fixo", "Fixo", "Meia", "Meia", "Pivô", "Atacante"),
  passes_totais = c(27, 22, 13, 20, 12, 10, 6),
  passes_certos = c(22, 16, 13, 17, 8, 8, 4),
  chances_criadas = c(0, 2, 1, 4, 1, 2, 0),
  desarmes = c(0, 1, 3, 6, 3, 2, 1),
  interceptacoes = c(0, 0, 0, 2, 2, 2, 2),
  bloqueios = c(3, 7, 14, 7, 5, 2, 1),
  posse_ganha = c(2, 2, 4, 8, 4, 6, 4),
  posse_perdida = c(3, 4, 3, 4, 5, 6, 4),
  tentativas_defesa = c(6, 0, 0, 0, 0, 0, 0),
  defesas = c(5, 0, 0, 0, 0, 0, 0),
  tentativas_defesas_dificies = c(6, 0, 0, 0, 0, 0, 0),
  defesas_dificies = c(5, 0, 0, 0, 0, 0, 0),
  chutes_tentados = c(0, 0, 4, 5, 4, 10, 0),
  chutes_no_gol = c(0, 0, 2, 2, 2, 8, 0),
  boas_chances = c(0, 0, 1, 1, 3, 7, 0),
  boas_chances_convertidas = c(0, 0, 0, 0, 6, 1, 0),
  dribles_tentados = c(0, 0, 1, 7, 0, 6, 0),
  dribles = c(0, 0, 0, 6, 0, 5, 0),
  dribles_sofridos_tentados = c(0, 4, 8, 8, 8, 8, 4),
  dribles_sofridos = c(0, 2, 4, 3, 4, 4, 3),
  gols = c(0, 0, 0, 0, 0, 6, 0),
  assists = c(0, 1, 1, 3, 0, 0, 1),
  pre_ast = c(0, 0, 0, 0, 0, 0, 1),
  stringsAsFactors = FALSE
)

estatisticas_jogos <- rbind(estatisticas_jogos, novo_jogo)













# Jogo 8 - Bravo x Delta (Semi) (Bravo) Ja foi

novo_jogo <- data.frame(
  id_jogo = 8,
  fase = "Mata-Mata",
  rodada = 4,
  placar_time = 4,
  placar_adv = 3,
  time = "Bravo",
  
  id_jogador = c(15, 16, 17, 18, 19, 20, 21),
  nome_jogador = c("Vitão", "Alleck", "Bebrabo", "Gigio", "Gui Simões", "Gustavo", "Matheuzinho"),
  posicao = c("GOL", "Fixo", "Ala", "Ala", "Meia", "Atacante", "Meia"),
  passes_totais = c(26, 22, 32, 13, 29, 14, 11),
  passes_certos = c(22, 19, 28, 10, 25, 13, 8),
  chances_criadas = c(0, 0, 2, 0, 3, 2, 0),
  desarmes = c(0, 1, 2, 3, 0, 2, 0),
  interceptacoes = c(1, 1, 1, 0, 3, 1, 1),
  bloqueios = c(0, 8, 9, 2, 2, 4, 1),
  posse_ganha = c(5, 1, 4, 2, 7, 1, 1),
  posse_perdida = c(2, 3, 3, 2, 4, 1, 3),
  tentativas_defesa = c(6, 0, 0, 0, 0, 0, 0),
  defesas = c(3, 0, 0, 0, 0, 0, 0),
  tentativas_defesas_dificies = c(4, 0, 0, 0, 0, 0, 0),
  defesas_dificies = c(2, 0, 0, 0, 0, 0, 0),
  chutes_tentados = c(0, 2, 7, 13, 15, 1, 2),
  chutes_no_gol = c(0, 0, 1, 6, 8, 1, 1),
  boas_chances = c(0, 0, 1, 2, 4, 1, 1),
  boas_chances_convertidas = c(0, 0, 1, 2, 1, 0, 0),
  dribles_tentados = c(0, 0, 4, 2, 6, 2, 1),
  dribles = c(0, 0, 2, 2, 2, 0, 0),
  dribles_sofridos_tentados = c(0, 2, 6, 2, 2, 2, 1),
  dribles_sofridos = c(0, 2, 3, 1, 1, 1, 1),
  gols = c(0, 0, 1, 2, 2, 0, 0),
  assists = c(0, 0, 1, 0, 0, 2, 1),
  pre_ast = c(1, 0, 0, 0, 1, 0, 0),
  stringsAsFactors = FALSE
)

estatisticas_jogos <- rbind(estatisticas_jogos, novo_jogo)

# JOGO 8 - Bravo x Delta (Semi) (Delta) ja feito

novo_jogo <- data.frame(
  id_jogo = 8,
  fase = "Mata-Mata",
  rodada = 4,
  placar_time = 3,
  placar_adv = 4,
  time = "Delta",
  
  id_jogador = c(1, 2, 3, 4, 5, 7),
  nome_jogador = c("Renan Emerique", "Percy", "Eduardo", "Renan Delgado", "Zachi", "Japa"),
  posicao = c("GOL", "Meia", "Fixo", "Ala", "Atacante", "Meia"),
  passes_totais = c(26, 21, 29, 26, 19, 19),
  passes_certos = c(22, 17, 22, 17, 18, 10),
  chances_criadas = c(0, 1, 1, 0, 0, 0),
  desarmes = c(0, 1, 0, 2, 2, 3),
  interceptacoes = c(0, 2, 0, 2, 1, 1),
  bloqueios = c(2, 9, 12, 11, 2, 2),
  posse_ganha = c(1, 5, 5, 4, 4, 2),
  posse_perdida = c(5, 3, 5, 5, 3, 9),
  tentativas_defesa = c(15, 0, 0, 0, 0, 0),
  defesas = c(12, 0, 0, 0, 0, 0),
  tentativas_defesas_dificies = c(10, 0, 0, 0, 0, 0),
  defesas_dificies = c(8, 0, 0, 0, 0, 0),
  chutes_tentados = c(0, 2, 2, 4, 8, 0),
  chutes_no_gol = c(0, 1, 0, 2, 2, 0),
  boas_chances = c(0, 1, 0, 1, 0, 0),
  boas_chances_convertidas = c(0, 0, 0, 1, 0, 0),
  dribles_tentados = c(0, 2, 0, 0, 10, 2),
  dribles = c(0, 0, 0, 0, 6, 2),
  dribles_sofridos_tentados = c(0, 1, 3, 5, 1, 3),
  dribles_sofridos = c(0, 0, 0, 0, 1, 3),
  gols = c(0, 0, 0, 1, 2, 0),
  assists = c(0, 2, 1, 0, 0, 0),
  pre_ast = c(0, 0, 0, 0, 0, 0),
  stringsAsFactors = FALSE
)

estatisticas_jogos <- rbind(estatisticas_jogos, novo_jogo)




















































# Jogo 9 - Alfa x Delta (3 Lugar) (Alfa) ja foi

novo_jogo <- data.frame(
  id_jogo = 9,
  fase = "Mata-Mata",
  rodada = 5,
  placar_time = 8,
  placar_adv = 4,
  time = "Alfa",
  
  id_jogador = c(8, 9, 10, 11, 12, 14),
  nome_jogador = c("Alan", "Baroni", "Granja", "Artur", "L.Marcelo", "Nicolas"),
  posicao = c("GOL", "Fixo", "Fixo", "Fixo", "Atacante", "Ala"),
  passes_totais = c(14, 21, 13, 15, 13, 14),
  passes_certos = c(13, 19, 11, 11, 12, 13),
  chances_criadas = c(0, 1, 0, 0, 2, 2),
  desarmes = c(0, 3, 0, 0, 0, 1),
  interceptacoes = c(0, 2, 1, 2, 2, 0),
  bloqueios = c(0, 7, 4, 4, 4, 1),
  posse_ganha = c(1, 6, 3, 2, 3, 4),
  posse_perdida = c(1, 2, 3, 3, 0, 4),
  tentativas_defesa = c(12, 0, 0, 0, 0, 0),
  defesas = c(9, 0, 0, 0, 0, 0),
  tentativas_defesas_dificies = c(7, 0, 0, 0, 0, 0),
  defesas_dificies = c(5, 0, 0, 0, 0, 0),
  chutes_tentados = c(0, 1, 2, 4, 5, 7),
  chutes_no_gol = c(0, 0, 2, 0, 3, 4),
  boas_chances = c(0, 0, 1, 0, 3, 4),
  boas_chances_convertidas = c(0, 0, 1, 0, 2, 3),
  dribles_tentados = c(0, 2, 2, 1, 4, 9),
  dribles = c(0, 2, 0, 0, 3, 8),
  dribles_sofridos_tentados = c(0, 4, 2, 1, 2, 5),
  dribles_sofridos = c(0, 1, 2, 1, 1, 2),
  gols = c(0, 0, 2, 0, 2, 3),
  assists = c(0, 0, 0, 0, 2, 3),
  pre_ast = c(0, 0, 0, 0, 1, 0),
  stringsAsFactors = FALSE
)

estatisticas_jogos <- rbind(estatisticas_jogos, novo_jogo)

# JOGO 9 - Alfa x Delta (3 Lugar) (Delta) ja feito

novo_jogo <- data.frame(
  id_jogo = 9,
  fase = "Mata-Mata",
  rodada = 5,
  placar_time = 4,
  placar_adv = 8,
  time = "Delta",
  
  id_jogador = c(1, 2, 3, 4, 5, 7),
  nome_jogador = c("Renan Emerique", "Percy", "Eduardo", "Renan Delgado", "Zachi", "Japa"),
  posicao = c("GOL", "Meia", "Fixo", "Ala", "Atacante", "Meia"),
  passes_totais = c(13, 28, 10, 13, 18, 2),
  passes_certos = c(12, 24, 7, 12, 16, 2),
  chances_criadas = c(0, 0, 1, 4, 2, 0),
  desarmes = c(0, 1, 0, 2, 3, 0),
  interceptacoes = c(0, 2, 1, 1, 0, 0),
  bloqueios = c(0, 3, 6, 3, 1, 1),
  posse_ganha = c(1, 5, 3, 4, 4, 0),
  posse_perdida = c(1, 4, 3, 2, 2, 1),
  tentativas_defesa = c(8, 0, 0, 0, 0, 0),
  defesas = c(2, 0, 0, 0, 0, 0),
  tentativas_defesas_dificies = c(7, 0, 0, 0, 0, 0),
  defesas_dificies = c(1, 0, 0, 0, 0, 0),
  chutes_tentados = c(0, 2, 1, 5, 11, 0),
  chutes_no_gol = c(0, 0, 1, 3, 7, 0),
  boas_chances = c(0, 0, 0, 2, 5, 0),
  boas_chances_convertidas = c(0, 0, 0, 1, 1, 0),
  dribles_tentados = c(0, 5, 1, 2, 1, 0),
  dribles = c(0, 4, 1, 1, 1, 0),
  dribles_sofridos_tentados = c(0, 1, 4, 2, 4, 2),
  dribles_sofridos = c(0, 0, 3, 0, 1, 2),
  gols = c(0, 0, 0, 1, 2, 0),
  assists = c(0, 0, 0, 1, 1, 0),
  pre_ast = c(0, 0, 0, 0, 0, 0),
  stringsAsFactors = FALSE
)

estatisticas_jogos <- rbind(estatisticas_jogos, novo_jogo)













# JOGO 9 - Bravo x Charlie (Final) (Bravo) FALTA SO ESSE

novo_jogo <- data.frame(
  id_jogo = 10,
  fase = "Final",
  rodada = 5,
  placar_time = 8,
  placar_adv = 2,
  time = "Bravo",
  
  id_jogador = c(15, 16, 17, 18, 19, 20, 21),
  nome_jogador = c("Vitão", "Alleck", "Bebrabo", "Gigio", "Gui Simões", "Gustavo", "Matheuzinho"),
  posicao = c("GOL", "Fixo", "Ala", "Ala", "Meia", "Atacante", "Meia"),
  passes_totais = c(15, 16, 21, 17, 19, 12, 5),
  passes_certos = c(15, 10, 16, 8, 14, 8, 5),
  chances_criadas = c(0, 1, 4, 2, 6, 0, 2),
  desarmes = c(0, 1, 10, 2, 1, 0, 1),
  interceptacoes = c(0, 7, 4, 3, 2, 5, 1),
  bloqueios = c(0, 2, 2, 3, 2, 1, 0),
  posse_ganha = c(3, 3, 8, 2, 4, 3, 2),
  posse_perdida = c(1, 3, 3, 3, 6, 2, 2),
  tentativas_defesa = c(10, 0, 0, 0, 0, 0, 0),
  defesas = c(8, 0, 0, 0, 0, 0, 0),
  tentativas_defesas_dificies = c(6, 0, 0, 0, 0, 0, 0),
  defesas_dificies = c(4, 0, 0, 0, 0, 0, 0),
  chutes_tentados = c(0, 2, 11, 11, 7, 1, 2),
  chutes_no_gol = c(0, 0, 8, 7, 4, 1, 0),
  boas_chances = c(0, 0, 3, 6, 2, 0, 1),
  boas_chances_convertidas = c(0, 2, 0, 4, 1, 0, 0),
  dribles_tentados = c(0, 4, 7, 2, 6, 0, 1),
  dribles = c(0, 3, 5, 1, 4, 0, 0),
  dribles_sofridos_tentados = c(0, 0, 1, 0, 2, 0, 1),
  dribles_sofridos = c(0, 2, 1, 0, 2, 0, 1),
  gols = c(0, 0, 4, 3, 1, 0, 0),
  assists = c(0, 0, 2, 2, 3, 0, 1),
  pre_ast = c(1, 0, 1, 1, 2, 0, 0),
  stringsAsFactors = FALSE
)

estatisticas_jogos <- rbind(estatisticas_jogos, novo_jogo)

# JOGO 10 - Bravo x Charlie (Final) (Charlie) ja foi

novo_jogo <- data.frame(
  id_jogo = 10,
  fase = "Final",
  rodada = 10,
  placar_time = 2,
  placar_adv = 8,
  time = "Charlie",
  
  id_jogador = c(22, 23, 24, 25, 26, 27, 28),
  nome_jogador = c("Fernando", "Gabigol", "Arnaldo", "B.Simões", "Jeffinho", "Bezin", "Danni"),
  posicao = c("GOL", "Fixo", "Fixo", "Meia", "Meia", "Pivô", "Atacante"),
  passes_totais = c(17, 24, 13, 20, 8, 15, 3),
  passes_certos = c(10, 10, 9, 16, 6, 10, 1),
  chances_criadas = c(1, 1, 2, 2, 1, 2, 0),
  desarmes = c(0, 2, 1, 4, 0, 3, 0),
  interceptacoes = c(2, 10, 5, 2, 3, 2, 3),
  bloqueios = c(1, 5, 5, 4, 4, 3, 0),
  posse_ganha = c(3, 3, 4, 4, 1, 5, 0),
  posse_perdida = c(2, 1, 3, 5, 0, 7, 0),
  tentativas_defesa = c(15, 0, 0, 0, 0, 0, 0),
  defesas = c(13, 0, 0, 0, 0, 0, 0),
  tentativas_defesas_dificies = c(7, 0, 0, 0, 0, 0, 0),
  defesas_dificies = c(5, 0, 0, 0, 0, 0, 0),
  chutes_tentados = c(2, 3, 2, 4, 1, 9, 0),
  chutes_no_gol = c(0, 1, 1, 0, 0, 8, 0),
  boas_chances = c(0, 0, 1, 0, 0, 5, 0),
  boas_chances_convertidas = c(0, 0, 0, 0, 0, 2, 0),
  dribles_tentados = c(0, 0, 0, 7, 0, 6, 0),
  dribles = c(0, 0, 0, 3, 0, 1, 0),
  dribles_sofridos_tentados = c(0, 3, 1, 3, 2, 4, 0),
  dribles_sofridos = c(0, 3, 1, 3, 2, 2, 0),
  gols = c(0, 0, 0, 0, 0, 2, 0),
  assists = c(0, 0, 1, 0, 0, 0, 0),
  pre_ast = c(0, 0, 0, 0, 0, 0, 0),
  stringsAsFactors = FALSE
)

estatisticas_jogos <- rbind(estatisticas_jogos, novo_jogo)