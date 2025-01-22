library(dplyr)
library(tidyr)
library(ggplot2)
library(tidyverse)

df <- read_csv("pcos_data.csv")
glimpse(df)

g <- ggplot(df, aes(Family_History_PCOS))
g + geom_density(aes(fill=factor(PCOS, labels = c("False", "True"))), alpha=0.5) + 
  labs(title="PCOS by Family History of PCOS",
       caption="Source: PCOS Dataset",
       x="PCOS", y="Density",
       fill="Family History of PCOS") +
  scale_fill_manual(
    values = c("False" = "palevioletred", 'True' = 'lightskyblue')) + 
  theme(
    plot.background = element_rect('thistle'),
    panel.background = element_rect('honeydew')
  )
 

g <- ggplot(df, aes(Weight_kg)) + scale_fill_brewer(palette = "Spectral")
g + geom_histogram(aes(fill=factor(PCOS, labels = c("False", "True"))), 
                   bins=35, col = "black",
                   size=.1) +   # change number of bins
  labs(title="PCOS by Weight", 
       caption="Source: PCOS Dataset",
       x="Weight", y="Count", fill="PCOS") +
  scale_fill_manual(
    values = c("False" = "palevioletred", 'True' = 'lightskyblue')) + 
  theme(
    plot.background = element_rect('thistle'),
    panel.background = element_rect('honeydew')
  )


g <- ggplot(df, aes(Height_ft)) + scale_fill_brewer(palette = "Spectral")
g + geom_histogram(aes(fill=factor(PCOS, labels = c("False", "True"))), 
                   bins=25, col = "black",
                   size=.1) +   # change number of bins
  labs(title="PCOS by Height", 
       caption="Source: PCOS Dataset",
       x="Height", y="Count", fill="PCOS") + 
  scale_fill_manual(
    values = c("False" = "palevioletred", 'True' = 'lightskyblue')) + 
  theme(
    plot.background = element_rect('thistle'),
    panel.background = element_rect('honeydew')
  )


g <- ggplot(df, aes(Menstrual_Irregularity))
g + geom_density(aes(fill=factor(PCOS, labels = c("False", "True"))), alpha=0.5) + 
  labs(title="PCOS by Menstrual Irregularity", 
       caption="Source: PCOS Dataset",
       x="PCOS", y="Density",
       fill="Menstrual Irregularity") +
  scale_fill_manual(
    values = c("False" = "palevioletred", 'True' = 'lightskyblue')) + 
  theme(
    plot.background = element_rect('thistle'),
    panel.background = element_rect('honeydew')
  )

