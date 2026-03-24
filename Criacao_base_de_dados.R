# Criando um data frame vazio para estatísticas por jogador em cada jogo

estatisticas_jogos <- data.frame(
  
  # Identificação do jogo
  id_jogo        = integer(),
  fase           = character(),  
  rodada         = character(),
  placar_time    = integer(),
  placar_adv     = integer(),
  
  # Identificação do jogador e time
  id_jogador     = integer(),
  nome_jogador   = character(),
  time           = character(),
  posicao        = character(),
  
  # Passes
  passes_totais   = integer(),
  passes_certos   = integer(),
  chances_criadas = integer(),
  
  # Defesa
  desarmes        = integer(),
  interceptacoes  = integer(),
  bloqueios       = integer(),
  
  # Posse
  posse_ganha     = integer(),
  posse_perdida   = integer(),
  
  # Goleiro
  tentativas_defesa     = integer(),
  defesas   = integer(),
  tentativas_defesas_dificies     = integer(),
  defesas_dificies   = integer(),

  # Chutes
  chutes_tentados          = integer(),
  chutes_no_gol            = integer(),
  boas_chances             = integer(),
  boas_chances_convertidas = integer(),
  
  # Dribles
  dribles_tentados          = integer(),
  dribles                   = integer(),
  dribles_sofridos_tentados = integer(),
  dribles_sofridos          = integer(),
  
  # Participações
  gols    = integer(),
  assists = integer(),
  pre_ast = integer(),

  stringsAsFactors = FALSE
)

# Visualizar estrutura
str(estatisticas_jogos)

