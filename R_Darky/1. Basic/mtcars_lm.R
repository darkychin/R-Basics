#plot()
#abline(lm(x~y))
data(mtcars)

plot(mtcars[c("cyl","mpg")], col="red")
abline(lm(mpg~cyl,mtcars))
mean(residuals(lm(mpg~cyl,mtcars)))

plot(mtcars[c("disp","mpg")], col="red")
abline(lm(mpg~disp,mtcars))
mean(residuals(lm(mpg~disp,mtcars)))

plot(mtcars[c("hp","mpg")], col="red")
abline(lm(mpg~hp,mtcars))
mean(residuals(lm(mpg~hp,mtcars)))

plot(mtcars[c("drat","mpg")], col="red")
abline(lm(mpg~drat,mtcars))
mean(residuals(lm(mpg~drat,mtcars)))

plot(mtcars[c("wt","mpg")], col="red")
abline(lm(mpg~wt,mtcars))
mean(residuals(lm(mpg~wt,mtcars)))

plot(mtcars[c("qsec","mpg")], col="red")
abline(lm(mpg~qsec,mtcars))
mean(residuals(lm(mpg~qsec,mtcars)))

plot(mtcars[c("vs","mpg")], col="red")
abline(lm(mpg~vs,mtcars))
mean(residuals(lm(mpg~vs,mtcars)))

plot(mtcars[c("am","mpg")], col="red")
abline(lm(mpg~am,mtcars))
mean(residuals(lm(mpg~am,mtcars)))

plot(mtcars[c("gear","mpg")], col="red")
abline(lm(mpg~gear,mtcars))
mean(residuals(lm(mpg~gear,mtcars)))

plot(mtcars[c("carb","mpg")], col="red")
abline(lm(mpg~carb,mtcars))
mean(residuals(lm(mpg~carb,mtcars)))

head(mtcars)


# ?sample  ?predict