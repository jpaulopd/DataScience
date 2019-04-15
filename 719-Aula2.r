library(readr)
library(plyr)

duracao <- read_csv('datasets/duracao.csv')
head(duracao)

duracao <- rename(duracao, replace = c('user_id'='aluno', 'course_id'='curso', 'timeToFinish'='dias'))
head(duracao)

plot(duracao$dias)

hist(duracao$dias)
hist(duracao$dias, breaks = 20, main = "Histograma do Tempo", ylab = "Quantidade", xlab = "Tempo", ylim = c(0,2500), col = "blue")

jpeg("exportado/aula2_histograma.jpg")
hist(duracao$dias, breaks = 20, main = "Histograma do Tempo", ylab = "Quantidade", xlab = "Tempo", ylim = c(0,2500), col = "blue")
dev.off()
