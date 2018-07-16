#Figure 8- Coefficient of Variation with Cleveland Dot Plot
library(ggplot2)

# import data
fig9 <- read.csv("C:/Users/Kelly/Documents/R_Programming/Fig9/AvgAnnualRunoffRatio.csv")

cairo_pdf("Fig9_25.pdf",width=11,height=8.5)
svg("Fig9.svg")

#Cleveland Dot Plot using ggplot
fig9$Scenario=factor(fig9$Scenario, levels = c("Land Use A", "Land Use B", "Land Use C", "Land Use D", "MIROC 8.5", "CSIRO 8.5", "CSIRO 4.5", "Hadley 4.5", "Combined A","Combined B","Combined C","Combined D"))
ggplot(fig9) +
  geom_point(size = 4, alpha = 0.7,
             aes(y = PercentChange, x = Scenario, color = Watershed, shape = Watershed), 
             position=position_jitter(w=0.0, h=0.6)) +
  xlab("Scenario") +
  ylab("Percent Change Runoff Ratios") +
  scale_shape_manual(values = c(15, 16, 17, 18)) +
  theme_bw() +# removes grey background 
  theme(
    legend.position = c(.30, .99),
    legend.justification = c("right", "top"),
    legend.box.just = "right",
    legend.margin = margin(6, 6, 6, 6),
    legend.title = element_text(face = "bold"),
    axis.text.x = element_text(angle = 90, hjust=1, vjust = 0.5), #hjust 1 or 0 for "left or right" justify
    panel.border = element_blank(),
    panel.grid.major = element_blank(), 
    panel.grid.minor = element_blank(),
    panel.background = element_blank(), 
    axis.line = element_line(colour = "black")
)   
dev.off()
