df= iris
summary(df)


a = round(runif(n = 150,min = 1,max = 150))
df_n = df[order(a),]
iris_t = df_n[1:129,1:4]
iris_tt = df_n[130:150,1:4]
iris_t_tar = df_n[1:129,5]
iris_tt_tar = df_n[130:150,5]
str(iris_t)
m1= knn(train = iris_t,test = iris_tt,cl = iris_t_tar,k = 1)
table(iris_tt_tar,m1)
plot(df, col="red")