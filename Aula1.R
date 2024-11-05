# Comando para instalar pacotes
install.packages('ggplot2')

# Comando para carregar pacotes
library(ggplot2)

ggplot(cars, aes(x=speed, y=dist))+ # camada base do gráfico
	geom_point(col="red", size=3)+ # camada de geometria de pontos
	theme_bw()+ # camada que define o tema do gráfico
	labs(title = "Meu gráfico no R", # título do gráfico
		caption = "@annyellaoliveira")
