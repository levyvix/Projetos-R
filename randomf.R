fit1 = rpart(SalePrice ~ .,data = train)

fit3 = randomForest(SalePrice ~ .,data = train)

di = rfImpute(SalePrice ~ .,data = train,iter=6)

fit4 = randomForest(SalePrice ~ .,data = di,proximity=T)

plot(fit4)