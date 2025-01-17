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

pie <- ggplot(all_yes, aes(x = "", y=Hirsutism,fill = factor(Hirsutism))) + 
  geom_bar(width = 1, stat = "identity") +
  theme(axis.line = element_blank(), 
        plot.title = element_text(hjust=0.5)) + 
  labs(fill="Hirsutism", 
       x=NULL, 
       y=NULL, 
       title="sfsdfsd", 
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
    fill = "green") + 
  labs(
    title = 'Sweet Food ',
    x = 'Days of the Week', 
    y = 'Count of people'
  )

ggplot(all_no, aes(x= Diet_Sweets)) +
  geom_histogram(
    binwidth = 1, 
    fill = "red") + 
  labs(
    title = 'Sweets Food',
    x = 'Days of the Week', 
    y = 'Count of people'
  )
