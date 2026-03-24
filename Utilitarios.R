UTILITARIOS

# EXCLUIR DUPLICATAS

estatisticas_jogos <- estatisticas_jogos[
  !duplicated(estatisticas_jogos[, c("id_jogo", "nome_jogador")]),
]

#EXCLUIR LINHA JOGADOR

estatisticas_jogos <- estatisticas_jogos[
  !(estatisticas_jogos$id_jogo == 1 &
      estatisticas_jogos$nome_jogador == "Perc"),
]

#EXCLUIR UM JOGO INTEIRO

estatisticas_jogos <- estatisticas_jogos[
  estatisticas_jogos$id_jogo != 10,
]

caminho <- file.path("C:", "Arquivos Rapha", "Futebol", "Nolarm", "dados.csv")
write.csv(estatisticas_jogos, caminho, row.names = FALSE)
