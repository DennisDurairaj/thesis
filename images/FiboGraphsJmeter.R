## FiboGraphs Jmeter
require(lattice)
chartColors = c("#FF0000", "#0088FF", "#A9FF96")
r200 <- data.frame(Users=rep(c("10","100", "200", "300", "400", "500"), each=3), 
                   Tech=rep(c("Node", "PHP", "Python"), 6), 
                   Request_per_sec=c(982, 985, 981, 971, 974, 968, 949, 949, 946, 934, 912, 914, 919, 859, 879, 889, 821, 862))

barchart(Request_per_sec ~ Users, groups=Tech, r200, auto.key = list(columns = 3), xlab="Users", ylab="requests/sec", main="Fibonacci module 200 requests JMeter", par.settings = list(superpose.polygon = list(col=chartColors)))

r700 <- data.frame(Users=rep(c("10","100", "200", "300", "400", "500"), each=3), 
                   Tech=rep(c("Node", "PHP", "Python"), 6), 
                   Request_per_sec=c(367, 333, 345, 354, 311, 337, 332, 309, 314, 321, 282, 302, 295, 252, 270, 262, 219, 235))

barchart(Request_per_sec ~ Users, groups=Tech, r700, auto.key = list(columns = 3), xlab="Users", ylab="requests/sec", main="Fibonacci module 700 requests JMeter", par.settings = list(superpose.polygon = list(col=chartColors)))

r500 <- data.frame(Users=rep(c("10","100", "200", "300", "400", "500"), each=3), 
                   Tech=rep(c("Node", "PHP", "Python"), 6), 
                   Request_per_sec=c(653, 650, 651, 638, 632, 628, 625, 613, 616, 602, 561, 583, 554, 502, 514, 502, 423, 442))

barchart(Request_per_sec ~ Users, groups=Tech, r500, auto.key = list(columns = 3), xlab="Users", ylab="requests/sec", main="Fibonacci module 500 requests JMeter", par.settings = list(superpose.polygon = list(col=chartColors)))

r1000 <- data.frame(Users=rep(c("10","100", "200", "300", "400", "500"), each=3), 
                    Tech=rep(c("Node", "PHP", "Python"), 6), 
                    Request_per_sec=c(160, 123, 153, 144, 105, 129, 123, 69, 101, 98, 42, 74, 78, 29, 53, 56, 11, 24))

barchart(Request_per_sec ~ Users, groups=Tech, r1000, auto.key = list(columns = 3), xlab="Users", ylab="Req/sec", main="Fibonacci module 1000 requests JMeter", par.settings = list(superpose.polygon = list(col=chartColors)))

table200 <- reshape(r200, idvar = "Users",timevar = "Tech", direction = "wide")
colnames(table200) <- c("Users", "Node \n req/sec", "PHP \n req/sec", "Python \n req/sec")

table500 <- reshape(r500, idvar = "Users",timevar = "Tech", direction = "wide")
colnames(table500) <- c("Users", "Node \n req/sec", "PHP \n req/sec", "Python \n req/sec")

table700 <- reshape(r700, idvar = "Users",timevar = "Tech", direction = "wide")
colnames(table700) <- c("Users", "Node \n req/sec", "PHP \n req/sec", "Python \n req/sec")

table1000 <- reshape(r1000, idvar = "Users",timevar = "Tech", direction = "wide")
colnames(table1000) <- c("Users", "Node \n req/sec", "PHP \n req/sec", "Python \n req/sec")

