# 1 - frequencia
prop.table(table(dados$Items))*100
pay = table(dados$Method.of.Payment)


age = table(Age)

prop.table(it) * 100
prop.table(pay) * 100
dados$idadest = idadest <-
  Recode(dados$Age,
         '20:40 = "20 ate 40"; 41:60 = "41 ate 60"; 61:80 = "61 ate 80"',
         as.factor = TRUE)
prop.table(table(dados$idadest)) * 100
dados$valort = valort <- Recode(
  dados$Net.Sales,
  '0:50 = "0 ate 50"; 51:101 = "51 ate 100"; 102:150 = "101 ate 150"; 150:300 = "maior que 150";',
  as.factor = TRUE
)
prop.table(table(dados$valort)) * 100

barplot(prop.table(table(dados$valort)) * 100)
# library(Rcmdr)
# 2 - grafico de colunas
Barplot(as.factor(dados$Items), by = dados$Method.of.Payment,xlab = "Items",ylab = "Frequência",main = "Quantidade de itens atribuíveis ao metodo de pagamento",legend.title = "Método de pagamento")

# 3 - tabela cruzada
tapply(dados$Net.Sales, dados$Type.of.Customer, mean)

#4 - diagrama de dispersao (sem correlacao)
plot(
  dados$Age,
  dados$Net.Sales,
  main = "Valor líquido em função da idade do cliente",
  xlab = "Idade",
  ylab = "Valor líquido"
)
