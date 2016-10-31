cor.table=read.csv("R and p value in Tumor(420) and Normal(36).csv")

plot (density(cor.table$R.in.tumor), col="red", lwd=2) 
lines(density(cor.table$R.in.normal), col="green", lwd=2) 


plot (density(cor.table$R.square.in.tumor), col="red", lwd=2) 
lines(density(cor.table$R.square.in.normal), col="green", lwd=2) 
