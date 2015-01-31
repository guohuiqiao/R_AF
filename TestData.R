xc <- exprs(fs1[[1]])[1,3]
xsCal <- 10^(4*xc/1024)*0.1024
print(xsCal)

xs2 <- exprs(fs2[[1]])[1,3]
print(xs2)
print(xs2/1048576)

print(head(fs1[[1]]))

print(head(fs2[[1]]))

xyplot(`FL2-A`~ `FL9-A`,fs2[[1]],smooth = FALSE)
