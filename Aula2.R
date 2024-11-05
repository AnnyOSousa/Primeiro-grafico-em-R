install.packages('readxl') # ler arquivos excel
install.packages('ggpmisc') # adicinar rea de regrecao
install.packages('ggcorrplot') # visualizar da matriz de correlação

# Carregar pacotes
library(ggplot2) 
library(ggpmisc) 
library(ggcorrplot) 
library(readxl) 

# Definir ambiente de trabalho
setwd('C:/Users/Ana Maria/Documents/evento_aula2')

# Ler os dados de excel
dados = read_excel('dados/preco_combustiveis.xlsx')

# Fazer gráfico de pontos
ggplot(dados, aes(x = gasolina ,y = etanol))+ 
	geom_point(size=2.8,shape=21,fill="gray35", col="tomato")+

# Adicionar reta de regressão
geom_smooth(method = 'lm', se=FALSE, formula = 'y~x')+

# Adicionar equação da reta ao gráfico
stat_poly_eq(use_label(c('eq','R2')) )+

# Ajustar título e rótulos dos eixos do gráfico
labs(x="Preço Gasolina (R$)", y="Preço Etanol (R$)")+

# Definir tema do gráfico
theme_light()+

# Separar dados por estado
facet_wrap(facets = vars(estado),nrow = 3 )

# Redimmencionar e salvar
ggsave(filename = 'figuras/regressao2.png',scale =1.8)

