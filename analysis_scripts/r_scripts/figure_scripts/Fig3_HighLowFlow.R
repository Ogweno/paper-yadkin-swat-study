#Flood Frequency Cleveland Dot Plot
library(ggplot2)

# import data
flood <- read.csv("C:/Users/Kelly/Documents/R_Programming/Fig11_Floods/flood_no_flow.csv")

# make sure you set the working directory before using these print options:
setwd("/Users/Kelly/R_Programming/Fig11_Floods")
cairo_pdf("Fig11.pdf")
svg("Fig11.svg")

flood$Flow <- factor(flood$Flow, levels = c("10 year return period", "100 year return period", "No flow"))

#Cleveland Dot Plot using ggplot
ggplot(flood, aes(y=Percent_Change, x=Scenario)) +
  geom_point(aes(color = Watershed, shape = Watershed),size=4, alpha = 0.7, position=position_jitter(w=0, h=0.9)) +
  facet_wrap(~ Flow) +
  xlab("Scenario") +
  ylab("Percent Change") +
  scale_shape_manual(values = c(15, 16, 17, 18)) +
  theme_bw() + # removes grey background 
  theme(
    legend.position = c(0.99, 0.99),
    legend.justification = c("right", "top"),
    legend.box.just = "right",
    legend.margin = margin(6, 6, 6, 6),
    legend.title = element_text(face = "bold"),
    axis.text.x = element_text(angle = 90, hjust=1, vjust = 0.5), 
    #panel.border = element_blank(),
    panel.grid.major = element_blank(), 
    panel.grid.minor = element_blank(),
    panel.background = element_blank(), 
    axis.line = element_line(colour = "black")
  )
dev.off()

  