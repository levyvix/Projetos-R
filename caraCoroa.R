jogadas = 1000
pv = data.frame(matrix(nrow = 0, ncol = 5))
for (i in 1:jogadas) {
  jg = round(runif(i, min = 0, max = 1))
  proporcao = prop.table(table(jg))
  n = table(jg)
  pv[i, 1:4] = c(proporcao[1], proporcao[2], n[1], n[2])
  pv[i, 5] = ifelse(n[1] > n[2] | n[1] == 1,"Cara",ifelse(n[1] == n[2],"Empate",ifelse(n[2] > n[1] | n[2] == 1,"Cora","Coroa")))
}

pv[,5] = as.factor(pv[,5])
names(pv) <- c("Cara", "Coroa", "nCara", "nCoroa","Vencedor")
corr = cor.test(pv$nCara,pv$nCoroa)
plot(pv$nCara, pv$nCoroa,main = c("Correlação: ",corr[["estimate"]]) ,xlab = "Numero de Caras", ylab = "Numero de Coroas")
abline(lm(pv$nCara ~ pv$nCoroa), col = "red")
# write.csv(pv,file = "caraCoroaR2.csv")
table(pv$Vencedor)
print(corr)
t.test(x = pv$Cara)