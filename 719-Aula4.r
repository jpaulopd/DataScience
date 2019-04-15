
library(readr)
library(plyr)

duracao <- read_csv('exportado/aula3_duracao.csv')
head(duracao)

popularidade <- read_csv('exportado/aula1_popularidade.csv')
head(popularidade)

sumario_estatistico <- aggregate(duracao$dias, list(duracao$curso), mean, na.rm = T)
head(sumario_estatistico)

sumario_estatistico <- rename(sumario_estatistico, replace = c('Group.1' = 'curso', 'x' = 'dias'))
head(sumario_estatistico)

popularidade <- rename(popularidade, c('course_id'='curso', 'freq'='popularidade'))
head(popularidade)

popularidade_e_duracao <- merge(sumario_estatistico, popularidade, by = 'curso')
head(popularidade_e_duracao)

write.csv(popularidade_e_duracao, file= "exportado/aula4_popularidade_e_duracao.csv", row.names=FALSE)
