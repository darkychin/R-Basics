# ---Decision Tree
#decisionTree
#ctree
#rpart
#randomForest

#install Packages
install.packages('party')
library('party')
library('caret')

data(iris)

head(iris)

set.seed(1)
ind = 1:nrow(iris)
trainIndex= createDataPartition(ind,p=0.8,list=FALSE)
# str(trainIndex)
train= iris[trainIndex,]
test = iris[-trainIndex,]

dtModel=ctree(Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width,train)

prediction = predict(dtModel,test)
plot(prediction)

confusionMatrix(prediction,test$Species)
ls()
#plot(dtModel)


