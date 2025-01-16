library(dplyr)
library(tidyr)
library(ggplot2)
library(tidyverse)
library(ggimage)
library(latticeExtra)

glimpse(df)

df$Age <- NULL



# Heatmap 
# Libraries
install.packages('hrbrthemes')
install.packages('viridis')
install.packages('plotly')
library(hrbrthemes)
library(viridis)
library(plotly)
# d3heatmap is not on CRAN yet, but can be found here: https://github.com/talgalili/d3heatmap
if (!require("devtools")) install.packages("devtools")
devtools::install_github("talgalili/d3heatmap")
library(d3heatmap)

# Load data
df <- read_csv("pcos_data.csv")
colnames(df) <- gsub("\\.", " ", colnames(df))




# Matrix format
dff <- df%>% select(-starts_with('A'))
df1 <- as.matrix(dff)

# Heatmap
#d3heatmap(mat, scale="column", dendrogram = "none", width="800px", height="80Opx", colors = "Blues")
install.packages('heatmaply')
library(heatmaply)
p <- heatmaply(df1,
               dendrogram = "none",
               xlab = "", ylab = "",
               main = "",
               scale = "column",
               margins = c(60,100,40,20),
               grid_color = "white",
               grid_width = 0.00001,
               titleX = FALSE,
               hide_colorbar = TRUE,
               branches_lwd = 0.1,
               fontsize_row = 5, fontsize_col = 5,
               labCol = colnames(df1),
               labRow = rownames(df1),
               heatmap_layers = theme(axis.line = element_blank())
)
p <- heatmaply(df1,
               #dendrogram = "row",
               xlab = "", ylab = "",
               main = "",
               scale = "column",
               margins = c(60,100,40,20),
               grid_color = "white",
               grid_width = 0.00001,
               titleX = FALSE,
               hide_colorbar = TRUE,
               branches_lwd = 0.1,
               label_names = c("Country", "Feature:", "Value"),
               fontsize_row = 5, fontsize_col = 5,
               labCol = colnames(df1),
               labRow = rownames(df1),
               heatmap_layers = theme(axis.line=element_blank())
)
print(p)