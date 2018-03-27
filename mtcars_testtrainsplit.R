#   test_train_split

#install caret package
#install.packages('purrr')
#remove.packages('purrr')
#install.packages('caret')
#remove.packages('caret')

# ---load package
library('caret')

mydata = data(mtcars)
#head(mtcars)
set.seed(666)

#mydataHead <- vector(mode="logical", length=11)
ind <- 1:nrow(mtcars)

# ---Partitioning Data into training set and testing set
#trainIndex = createDataPartition(mydataHead,p=0.8, list=FALSE,times=1)
trainIndex = createDataPartition(ind, p = 0.8, list = FALSE)
train = mtcars[trainIndex, ]
test = mtcars[-trainIndex, ]

# ---apply linear regression model on all columns (using + )
#mtcarsLM= lm(mpg~drat,mtcars)
mtcarsLM = lm(mpg ~ cyl + disp + hp + drat + wt + qsec + vs + am + gear +
                  carb, mtcars)

# ---do prediction with lm model on test data
#plot(mtcarsLM)
#test$mpg= as.character(test$mpg)
#test2<-subset(test,select=c("mpg","cyl","disp","hp","drat","wt","qsec","vs","am","gear","carb"))
#plot(test2$mpg)
prediction1 = predict(mtcarsLM, test)
#str(prediction1)
#plot(prediction1)
#View(prediction1)
#table(prediction1)
#str(test$mpg)
#str(prediction1)

#colnames(prediction1)["names"]=c("")
#confusionMatrix(prediction1,test$mpg) -- not suitable
#plot(prediction1,col="blue")
#plot(test)
#head(mtcars)


# dummyTest= as.numeric(test2$mpg)
# attr(dummyTest,"names")=c("Mazda RX4","Merc 450SLC","AMC Javelin","Porsche 914-2")
# str(dummyTest)
#
# dummyPred = prediction1
# colnames(dummyPred) = NULL
# dummyPred
#
# confusionMatrix(prediction1,dummyTest)

# ---Accuracy Testing of lm
Accuracy = cor(prediction1,test$mpg)
Accuracy
#library(scales) # for percentage
#remove.packages('scales')
#use below without loading entire library
scales::percent(Accuracy)

#predict_test = data.frame(cbind(actuals=test$mpg,predicteds=prediction1))
#Accuracy = cor(predict_test)
#Accuracy