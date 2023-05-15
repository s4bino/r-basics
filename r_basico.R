# instalando pacotes
install.packages(c("ggplot2", "plyr","dplyr")

# carregando pacote para visulização de dados
library(ggplot2)

# visualizar base de dados
mpg
View(mpg)

# teste gerando um gráfico
ggplot(mpg, aes(displ, cty)) +
  geom_point()

# carregando pacote para tratamento de dados
library(plyr)

# salvando o conteúdo do dataset mpg no para o dataset carros
# e alterando alguns nomes das colunas
veiculos <- rename(mpg, c("manufacturer" = "Marca",
                          "displ" = "Cilindradas",
                          "cty" = "Consumo",
                          "drv" = "Tração",
                          "class" = "Tipo"))

names(veiculos)

##### GRÁFICOS #####

# consumo x cilindradas
ggplot(veiculos, aes(Cilindradas,Consumo,
                   size = Tração,
                   color = Tipo)) +
  geom_point()
