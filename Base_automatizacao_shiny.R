times <- data.frame(
  id_time = c(1,2,3,4),
  nome_time = c("Alfa","Bravo","Charlie","Delta"),
  stringsAsFactors = FALSE
)

jogadores <- data.frame(
  id_jogador = 1:28,
  nome_jogador = c(
    "Renan Emerique","Percy","Eduardo","Renan Delgado","Zachi","Bruno", "Japa",
    "Alan","Baroni","Granja","Artur","L.Marcelo","G.Mateus","Nicolas",
    "Vitão","Alleck","Bebrabo","Gigio","Gui Simões","Gustavo","Matheuzinho",
    "Fernando","Gabigol","Arnaldo","B.Simões","Jeffinho","Bezin","Danni"
  ),
  id_time = c(rep(4,7), rep(1,7), rep(2,7), rep(3,7)),
  stringsAsFactors = FALSE
)

jogos <- data.frame(
  id_jogo = c(1,2,3,4,5,6,7,8,9,10),
  fase = c("Grupos","Grupos","Grupos","Grupos","Grupos","Grupos","Mata-Mata","Mata-Mata","Mata-Mata","Mata-Mata"),
  rodada = c(1,1,2,2,3,3,"Semi","Semi","Terceiro Lugar","Final"),
  id_time_casa = c(2,1,1,3,2,1,2,1,1,2),   # Bravo x Charlie | Alfa x Delta...
  id_time_fora = c(3,4,2,4,4,3,4,3,4,3),
  placar_casa = c(7,1,5,3,6,0,4,1,8,8),
  placar_fora = c(1,1,6,2,1,2,3,6,4,2),
  stringsAsFactors = FALSE
)

eventos <- data.frame(
  id_evento = integer(),
  id_jogo = integer(),
  minuto = numeric(),
  tipo_evento = character(),
  sucesso = logical(),
  stringsAsFactors = FALSE
)

registrar_evento <- function(id_jogo, minuto, tipo_evento,
                             jogadores_realizaram,
                             jogadores_sofreram = NULL,
                             sucesso = TRUE){
  
  novo_id <- ifelse(nrow(eventos)==0,1,max(eventos$id_evento)+1)
  
  # adiciona evento
  eventos <<- rbind(eventos,
                    data.frame(
                      id_evento = novo_id,
                      id_jogo = id_jogo,
                      minuto = minuto,
                      tipo_evento = tipo_evento,
                      sucesso = sucesso
                    ))
  
  # adiciona quem realizou
  for(j in jogadores_realizaram){
    participantes_evento <<- rbind(participantes_evento,
                                   data.frame(
                                     id_evento = novo_id,
                                     id_jogador = j,
                                     papel = "realizou"
                                   ))
  }
  
  # adiciona quem sofreu
  if(!is.null(jogadores_sofreram)){
    for(j in jogadores_sofreram){
      participantes_evento <<- rbind(participantes_evento,
                                     data.frame(
                                       id_evento = novo_id,
                                       id_jogador = j,
                                       papel = "sofreu"
                                     ))
    }
  }
}

registrar_evento(15, 5.20, "drible", 18, 23, sucesso = TRUE)

registrar_evento(15, 7.30, "posse_ganha", c(15,18))

library(dplyr)
library(tidyr)

gerar_estatisticas <- function(){
  
  base <- participantes_evento %>%
    filter(papel == "realizou") %>%
    left_join(eventos, by = "id_evento")
  
  estat <- base %>%
    group_by(id_jogo, id_jogador, tipo_evento) %>%
    summarise(total = n(), .groups="drop") %>%
    pivot_wider(names_from = tipo_evento,
                values_from = total,
                values_fill = 0)
  
  estat %>%
    left_join(jogadores, by = "id_jogador") %>%
    left_join(jogos, by = "id_jogo")
}

estatisticas_jogos <- gerar_estatisticas()