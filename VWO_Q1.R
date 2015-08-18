VWO_Q1 <- read.csv("~/Documents/DTMC/VWO_Q1.csv", row.names=1)
VWO_Q1 <- as.matrix(VWO_Q1)
library(expm)
# v10 <- VWO_Q1 %^% 10
v1000 <- VWO_Q1 %^% 1000
library(gplots)
heatmap.2(v1000, dendrogram = "none")
