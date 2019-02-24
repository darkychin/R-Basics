# notes: TRUE FALSE and 1 , 0 is not equal in R
x <- c(4, 7, 6, 5, 2, 8)

x[c(TRUE, FALSE)]
x[c(1,0)]


L <- list(x = c(1:5), y = c("a", "b", "c"), z = capColor)
L[[2]]
L$y
L[c(1, 3)]
L[c("x", "y")]
L[["z"]]

d <- data.frame(x = 1:10, y = letters[1:10], z = LETTERS[1:10])
d[1]
d[, 1]
d[, "x", drop = FALSE]
d[c("x", "z")]
d[d$x > 3, "y", drop = FALSE]
d[2, ]


length(c(1, 2, NULL, 4))
sum(c(1, 2, NULL, 4))
x <- NULL
c(x, 2)

pi/0
2 * Inf
Inf - 1e+10
Inf + Inf
3 < -Inf
Inf == Inf

exp(-Inf)
NA == NA
NA == NULL
NULL == NULL
NA & FALSE

