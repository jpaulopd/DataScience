install.packages('readxl')

library(readxl)

aulas <- read_excel('datasets/aulas.xlsx')
head(aulas)
head(aulas$section_id)

attach(aulas)
head(section_id)
tail(sort(section_id))

aulas[33137,3] <- 3255
tail(sort(section_id))
aulas[33137,3]

tail(sort(aulas$section_id))
length(unique(aulas$section_id))

table(aulas$section_id)
sort(table(aulas$section_id))
sort(table(aulas$course_id))

library(plyr)
auxiliar <- count(aulas, vars = "course_id")
head(auxiliar)
write.csv(auxiliar, file="exportado/aula1_popularidade.csv",row.names=FALSE)
