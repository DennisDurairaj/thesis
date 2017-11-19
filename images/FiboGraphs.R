require(lattice)
chartColors = c("#77b062", "#3671a1", "Orange")
r200 <- data.frame(Users=rep(c("10","100", "200", "300", "400", "500"), each=3), 
                   Tech=rep(c("Node", "PHP", "Python"), 6), 
                   Request_per_sec=c(1586, 1595, 1583, 1574, 1588, 1561, 1555, 1559, 1556, 1534, 1503, 1512, 1514, 1438, 1487, 1497, 1410, 1471))

barchart(Request_per_sec ~ Users, groups=Tech, r200, auto.key = list(columns = 3), xlab="Users", ylab="requests/sec", main="Fibonacci module 200 requests", par.settings = list(superpose.polygon = list(col=chartColors)))

r700 <- data.frame(Users=rep(c("10","100", "200", "300", "400", "500"), each=3), 
                   Tech=rep(c("Node", "PHP", "Python"), 6), 
                   Request_per_sec=c(667, 630, 644, 654, 621, 637, 637, 609, 612, 621, 582, 602, 595, 552, 570, 562, 519, 535))

barchart(Request_per_sec ~ Users, groups=Tech, r700, auto.key = list(columns = 3), xlab="Users", ylab="requests/sec", main="Fibonacci module 700 requests", par.settings = list(superpose.polygon = list(col=chartColors)))

r500 <- data.frame(Users=rep(c("10","100", "200", "300", "400", "500"), each=3), 
                   Tech=rep(c("Node", "PHP", "Python"), 6), 
                   Request_per_sec=c(942, 938, 930, 928, 922, 913, 915, 903, 902, 892, 842, 853, 843, 783, 821, 791, 713, 732))

barchart(Request_per_sec ~ Users, groups=Tech, r500, auto.key = list(columns = 3), xlab="Users", ylab="requests/sec", main="Fibonacci module 500 requests", par.settings = list(superpose.polygon = list(col=chartColors)))

r1000 <- data.frame(Users=rep(c("10","100", "200", "300", "400", "500"), each=3), 
                    Tech=rep(c("Node", "Python", "PHP"), 6), 
                    Request_per_sec=c(300,283, 233, 284, 263, 202, 255, 181, 100, 208, 103, 67, 176, 53, 39, 153, 51, 37))

barchart(Request_per_sec ~ Users, groups=Tech, r1000, auto.key = list(columns = 3), xlab="Users", ylab="Req/sec", main="Fibonacci module 1000 requests", par.settings = list(superpose.polygon = list(col=chartColors)))

table200 <- reshape(r200, idvar = "Users",timevar = "Tech", direction = "wide")
colnames(table1000) <- c("Users", "Node \n req/sec", "PHP \n req/sec", "Python \n req/sec")

table500 <- reshape(r500, idvar = "Users",timevar = "Tech", direction = "wide")
colnames(table1000) <- c("Users", "Node \n req/sec", "PHP \n req/sec", "Python \n req/sec")

table700 <- reshape(r700, idvar = "Users",timevar = "Tech", direction = "wide")
colnames(table1000) <- c("Users", "Node \n req/sec", "PHP \n req/sec", "Python \n req/sec")

table1000 <- reshape(r1000, idvar = "Users",timevar = "Tech", direction = "wide")
colnames(table1000) <- c("Users", "Node \n req/sec", "PHP \n req/sec", "Python \n req/sec")

