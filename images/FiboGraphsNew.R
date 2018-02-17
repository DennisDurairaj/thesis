require(lattice)
chartColors = c("#77b062", "#3671a1", "Orange")
r200 <- data.frame(Users=rep(c("100", "200", "300", "400", "500"), each=3), 
                   Tech=rep(c("Node", "PHP", "Python"), 5), 
                   Request_per_sec=c(135.37, 176.60, 79.58, 
                                     76.06, 91.72, 55.18, 
                                     23.35, 0.99, 16.08, 
                                     16.35, 0.99, 8.37, 
                                     4.7, 0.89, 4.64))

barchart(Request_per_sec ~ Users, groups=Tech, r200, auto.key = list(columns = 3), xlab="Users", ylab="requests/sec", main="Fibonacci module Local Server", par.settings = list(superpose.polygon = list(col=chartColors)))

tpr200 <- data.frame(Users=rep(c("100", "200", "300", "400", "500"), each=3), 
                   Tech=rep(c("Node", "PHP", "Python"), 5), 
                   Time_per_request=c(7.38, 5.66, 12.56,
                                      13.14, 10.9, 18.12, 
                                      42.83, 1008.46, 62.19,
                                      61.17, 1011.46, 119.074, 
                                      212.94, 1129.60, 215.63))

barchart(Time_per_request ~ Users, groups=Tech, tpr200, auto.key = list(columns = 3), xlab="Users", ylab="Time per request", main="Fibonacci module Local Server", par.settings = list(superpose.polygon = list(col=chartColors)))

rRemote200 <- data.frame(Users=rep(c("100", "200", "300", "400", "500"), each=3), 
                   Tech=rep(c("Node", "PHP", "Python"), 5), 
                   Request_per_sec=c(75.37, 116.60, 39.58, 
                                     46.06, 91.72, 25.18, 
                                     23.35, 0.99, 11.08, 
                                     8.35, 0.99, 2.37, 
                                     2.7, 0.89, 1.64))

barchart(Request_per_sec ~ Users, groups=Tech, rRemote200, auto.key = list(columns = 3), xlab="Users", ylab="requests/sec", main="Fibonacci Module Remote Server", par.settings = list(superpose.polygon = list(col=chartColors)))

tprRemote200 <- data.frame(Users=rep(c("100", "200", "300", "400", "500"), each=3), 
                     Tech=rep(c("Node", "PHP", "Python"), 5), 
                     Time_per_request=c(47.38, 35.66, 52.56,
                                        53.14, 40.9, 58.12, 
                                        82.83, 1015.46, 92.19,
                                        121.17, 1018.46, 159.074, 
                                        292.94, 1129.60, 315.63))

barchart(Time_per_request ~ Users, groups=Tech, tprRemote200, auto.key = list(columns = 3), xlab="Users", ylab="Time per request", main="Fibonacci module Remote Server", par.settings = list(superpose.polygon = list(col=chartColors)))

rDb200 <- data.frame(Users=rep(c("100", "200", "300", "400", "500"), each=3), 
                         Tech=rep(c("Node", "PHP", "Python"), 5), 
                         Request_per_sec=c(53.34, 41.32, 6.86, 
                                           46.06, 23.83, 5.18, 
                                           29.18, 16.70, 4.08, 
                                           14.99, 1.96, 3.37, 
                                           4.5, 0.89, 2.64))

barchart(Request_per_sec ~ Users, groups=Tech, rDb200, auto.key = list(columns = 3), xlab="Users", ylab="requests/sec", main="Database Query Local Server", par.settings = list(superpose.polygon = list(col=chartColors)))

tprDb200 <- data.frame(Users=rep(c("100", "200", "300", "400", "500"), each=3), 
                           Tech=rep(c("Node", "PHP", "Python"), 5), 
                           Time_per_request=c(18.74, 24.20, 145.86,
                                              21.51, 41.43, 158.12, 
                                              42.83, 59.87, 192.19,
                                              66.70, 1018.46, 259.074, 
                                              222.94, 1129.60, 415.63))

barchart(Time_per_request ~ Users, groups=Tech, tprDb200, auto.key = list(columns = 3), xlab="Users", ylab="Time per request", main="Database Query Local Server", par.settings = list(superpose.polygon = list(col=chartColors)))

tabler200 <- reshape(r200, idvar = "Users",timevar = "Tech", direction = "wide")
colnames(tabler200) <- c("Users", "Node \n req/sec", "PHP \n req/sec", "Python \n req/sec")

tabletpr200 <- reshape(tpr200, idvar = "Users",timevar = "Tech", direction = "wide")
colnames(tabletpr200) <- c("Users", "Node \n req/sec", "PHP \n req/sec", "Python \n req/sec")

tablerRemote200 <- reshape(rRemote200, idvar = "Users",timevar = "Tech", direction = "wide")
colnames(tablerRemote200) <- c("Users", "Node \n req/sec", "PHP \n req/sec", "Python \n req/sec")

tabletprRemote200 <- reshape(tprRemote200, idvar = "Users",timevar = "Tech", direction = "wide")
colnames(tabletprRemote200) <- c("Users", "Node \n req/sec", "PHP \n req/sec", "Python \n req/sec")

tablerDb200 <- reshape(rDb200, idvar = "Users",timevar = "Tech", direction = "wide")
colnames(tablerDb200) <- c("Users", "Node \n req/sec", "PHP \n req/sec", "Python \n req/sec")

tabletprDb200 <- reshape(tprDb200, idvar = "Users",timevar = "Tech", direction = "wide")
colnames(tabletprDb200) <- c("Users", "Node \n req/sec", "PHP \n req/sec", "Python \n req/sec")





table200 <- reshape(r200, idvar = "Users",timevar = "Tech", direction = "wide")
colnames(table200) <- c("Users", "Node \n req/sec", "PHP \n req/sec", "Python \n req/sec")

table500 <- reshape(r500, idvar = "Users",timevar = "Tech", direction = "wide")
colnames(table500) <- c("Users", "Node \n req/sec", "PHP \n req/sec", "Python \n req/sec")

table700 <- reshape(r700, idvar = "Users",timevar = "Tech", direction = "wide")
colnames(table700) <- c("Users", "Node \n req/sec", "PHP \n req/sec", "Python \n req/sec")

table1000 <- reshape(r1000, idvar = "Users",timevar = "Tech", direction = "wide")
colnames(table1000) <- c("Users", "Node \n req/sec", "PHP \n req/sec", "Python \n req/sec")

