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

pie <- ggplot(df, aes(x = "", y=Stressed,fill = factor(PCOS))) + 
  geom_bar(width = 1, stat = "identity") +
  theme(axis.line = element_blank(), 
        plot.title = element_text(hjust=0.5)) + 
  labs(fill="Stress", 
       x=NULL, 
       y=NULL, 
       title="Stress (PCOS)", 
       caption="Source: Kaggle") +
  scale_fill_manual(
    values = c(0 = 'palevioletred', 1 = 'lightskyblue')) +
  theme(
    plot.background = element_rect('thistle'),
    panel.background = element_rect('honeydew')
  )


pie + coord_polar(theta = "y", start=0)




ggplot(all_yes, aes(x = ))


ggplot(df, aes(x=Diet_Fried_Food)) +
  geom_histogram(aes(fill=factor(PCOS, labels = c('False','True'))),
    binwidth = 1) + 
  labs(
    title = 'Fried Food ',
    x = 'Days of the Week', 
    y = 'Count of people', fill='PCOS',
    caption='Source: PCOS Dataset'
  ) +
  scale_fill_manual(
    values = c('False' = 'palevioletred', 'True' = 'lightskyblue')) +
  theme(
    plot.background = element_rect('thistle'),
    panel.background = element_rect('honeydew')
  )


#Sweets 


ggplot(df, aes(x=Diet_Sweets)) +
  geom_histogram(aes(fill=factor(PCOS, labels = c('False','True'))),
    binwidth = 1) + 
  labs(
    title = 'Sweet Food',
    x = 'Days of the Week', 
    y = 'Count of people', fill='PCOS',
    caption='Soruce: PCOS Dataset'
  ) +
  scale_fill_manual(
    values = c('False' = 'palevioletred', 'True' = 'lightskyblue')) +
  theme(
    plot.background = element_rect('thistle'),
    panel.background = element_rect('honeydew')
  )

#stress

ggplot(df, aes(x=Stressed)) +
  geom_histogram(aes(fill=factor(PCOS, labels = c('False','True'))),
    binwidth = 1) + 
  labs(
    title = 'Stress',
    x = 'No vs Yes', 
    y = 'Count of people', fill='PCOS',
    caption='Source: PCOS Dataset'
  ) +
  scale_fill_manual(
    values = c('False' = 'palevioletred', 'True' = 'lightskyblue')) +
  theme(
    plot.background = element_rect('thistle'),
    panel.background = element_rect('honeydew')
  )


# Hyperandrogenism

ggplot(df, aes(x=Hyperandrogenism)) +
  geom_histogram(aes(fill=factor(PCOS, labels = c('False','True'))),
    binwidth = 1) + 
  labs(
    title = 'Hyperandrogenism in People with PCOS',
    x = 'No vs Yes', 
    y = 'Count of people', fill='PCOS',
    caption='Source: PCOS Dataset'
  ) +
  scale_fill_manual(
    values = c('False' = 'palevioletred', 'True' = 'lightskyblue')) +
  theme(
    plot.background = element_rect('thistle'),
    panel.background = element_rect('honeydew')
  )

#Hormonal imbalance 
ggplot(df, aes(x=Hormonal_Imbalance)) +
  geom_histogram(aes(fill=factor(PCOS, labels = c('False','True'))),
    binwidth = 1) + 
  labs(
    title = 'Hormonal Imbalances in People with PCOS',
    x = 'No vs Yes', 
    y = 'Count of people', fill='PCOS',
    caption='Source: PCOS Dataset'
  ) +
  scale_fill_manual(
    values = c('False' = 'palevioletred', 'True' = 'lightskyblue')) +
  theme(
    plot.background = element_rect('thistle'),
    panel.background = element_rect('honeydew')
  )

#Marital Status
ggplot(df, aes(x=Marital_Status)) +
  geom_histogram(aes(fill=factor(PCOS, labels = c('False','True'))),
                 binwidth = 1) + 
  labs(
    title = 'Marital Status in People with PCOS',
    x = 'No vs Yes', 
    y = 'Count of people', fill='PCOS',
    caption='Source: PCOS Dataset'
  ) +
  scale_fill_manual(
    values = c('False' = 'palevioletred', 'True' = 'lightskyblue')) +
  theme(
    plot.background = element_rect('thistle'),
    panel.background = element_rect('honeydew')
  )

