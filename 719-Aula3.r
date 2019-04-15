library(readr)
library(plyr)

duracao <- read_csv('datasets/duracao.csv')
duracao <- rename(duracao, replace = c('user_id'='aluno', 'course_id'='curso', 'timeToFinish'='dias'))
head(duracao)

mean(duracao$dias)
mean(duracao$dias, na.rm = T)
median(duracao$dias, na.rm = T)
summary(duracao$dias)

dim(duracao)
dim(duracao)[1]

dados_faltantes <- 3828
total_de_cursos <-  dim(duracao)[1]
dados_faltantes / total_de_cursos

length(unique(duracao$curso))
length(unique(duracao$aluno))

write.csv(duracao, file = "exportado/aula3_duracao.csv", row.names = FALSE)
