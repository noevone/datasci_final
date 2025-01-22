library(dplyr)
library(tidyr)
library(ggplot2)
library(tidyverse)
library(ggimage)
library(latticeExtra)

glimpse(df)

#df$Age <- NULL

# Load data
df <- read_csv("pcos_data.csv")

all_yes <- df %>%
  filter(PCOS == 1)

all_no <- df %>%
  filter(PCOS == 0)

pie <- ggplot(all_yes, aes(x = "", y=Stressed,fill = factor(Stressed))) + 
  geom_bar(width = 1, stat = "identity") +
  theme(axis.line = element_blank(), 
        plot.title = element_text(hjust=0.5)) + 
  labs(fill="Stress", 
       x=NULL, 
       y=NULL, 
       title="Stress (PCOS)", 
       caption="Source: Kaggle")

pie + coord_polar(theta = "y", start=0)




ggplot(all_yes, aes(x = ))


ggplot(all_yes, aes(x=Diet_Fried_Food)) +
  geom_histogram(
    binwidth = 1, 
    fill = "green") + 
  labs(
    title = 'Fried Food ',
    x = 'Days of the Week', 
    y = 'Count of people'
  )

ggplot(all_no, aes(x= Diet_Fried_Food)) +
  geom_histogram(
    binwidth = 1, 
    fill = "red") + 
  labs(
    title = 'Fried Food',
    x = 'Days of the Week', 
    y = 'Count of people'
  )

#Sweets 


ggplot(all_yes, aes(x=Diet_Sweets)) +
  geom_histogram(
    binwidth = 1, 
    fill = "darkolivegreen3") + 
  labs(
    title = 'Sweet Food (PCOS)',
    x = 'Days of the Week', 
    y = 'Count of people'
  ) +
  theme(
    axis.text.x = element_text(
      angle=0, 
      vjust=0.6,
      color = "pink4"),
    plot.title = element_text(color = 'pink4'),
    panel.background = element_rect((fill = "antiquewhite"))
  )

ggplot(all_no, aes(x= Diet_Sweets)) +
  geom_histogram(
    binwidth = 1, 
    fill = "indianred1") + 
  labs(
    title = 'Sweet Food (No PCOS)',
    x = 'Days of the Week', 
    y = 'Count of people'
  ) +
  theme(
    axis.text.x = element_text(
      angle=0, 
      vjust=0.6,
      color = "pink4"),
    plot.title = element_text(color = 'pink4'),
    panel.background = element_rect((fill = "antiquewhite"))
  )

#stress

ggplot(all_yes, aes(x=Stressed)) +
  geom_histogram(
    binwidth = 1, 
    fill = "darkolivegreen3") + 
  labs(
    title = 'Stress (PCOS)',
    x = 'No vs Yes', 
    y = 'Count of people'
  ) +
  theme(
    axis.text.x = element_text(
      angle=0, 
      vjust=0.6,
      color = "pink4"),
    plot.title = element_text(color = 'pink4'),
    panel.background = element_rect((fill = "antiquewhite"))
  )

ggplot(all_no, aes(x= Stressed)) +
  geom_histogram(
    binwidth = 1, 
    fill = "indianred1") + 
  labs(
    title = 'Stress (No PCOS)',
    x = 'No vs Yes', 
    y = 'Count of people'
  ) +
  theme(
    axis.text.x = element_text(
      angle=0, 
      vjust=0.6,
      color = "pink4"),
    plot.title = element_text(color = 'pink4'),
    panel.background = element_rect((fill = "antiquewhite"))
  )

# Hyperandrogenism

ggplot(all_yes, aes(x=Hyperandrogenism)) +
  geom_histogram(
    binwidth = 1, 
    fill = "darkolivegreen3") + 
  labs(
    title = 'Hyperandrogenism in People with PCOS',
    x = 'No vs Yes', 
    y = 'Count of people'
  ) +
  theme(
    axis.text.x = element_text(
      angle=0, 
      vjust=0.6,
      color = "pink4"),
    plot.title = element_text(color = 'pink4'),
    panel.background = element_rect((fill = "antiquewhite"))
  )

#Hormonal imbalance 
ggplot(all_yes, aes(x=Hormonal_Imbalance)) +
  geom_histogram(
    binwidth = 1, 
    fill = "darkolivegreen3") + 
  labs(
    title = 'Hormonal Imbalances in People with PCOS',
    x = 'No vs Yes', 
    y = 'Count of people'
  ) +
  theme(
    axis.text.x = element_text(
      angle=0, 
      vjust=0.6,
      color = "pink4"),
    plot.title = element_text(color = 'pink4'),
    panel.background = element_rect((fill = "antiquewhite"))
  )
