library(readr)
library(plyr)
library(ggplot2)

popularidade_e_duracao <- read_csv('exportado/aula4_popularidade_e_duracao.csv')
head(popularidade_e_duracao)

plot(popularidade_e_duracao$dias, popularidade_e_duracao$popularidade)

modelo.linear <- lm(popularidade_e_duracao$popularidade ~ popularidade_e_duracao$dias)
modelo.linear

plot(popularidade_e_duracao$dias, popularidade_e_duracao$popularidade)
abline(lm(popularidade_e_duracao$popularidade ~ popularidade_e_duracao$dias))

scatter.smooth(popularidade_e_duracao$dias, popularidade_e_duracao$popularidade)

help('pch')

#scatter.smooth(popularidade_e_duracao$dias, popularidade_e_duracao$popularidade, pch=16)
#scatter.smooth(popularidade_e_duracao$dias, popularidade_e_duracao$popularidade, pch='.')
scatter.smooth(popularidade_e_duracao$dias, popularidade_e_duracao$popularidade, pch=21, col='blue')

grafico <- ggplot(popularidade_e_duracao, aes(dias, popularidade))
grafico <- grafico + geom_point()
grafico <- grafico + geom_smooth()
grafico

jpeg("exportado/aula5_popularidade_dias_não_linear.jpg")
grafico
dev.off()
