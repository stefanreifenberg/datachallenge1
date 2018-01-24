library(tidyverse) # :)
library(readxl) # read excel files
library(viridis) # color palatte

# read data(i pretidied my data in excel)
data <- read_excel("tidydata.xlsx", col_names = TRUE)

# build the scatterplot
plot <- ggplot(data, aes(x=Growth_Rate, y=Species)) + 
  geom_point(aes(col=Temperature, size=Light_intensity)) +
  theme_minimal() +
  scale_size(breaks=c(2500,5000), range = c(5,10)) +
  scale_color_viridis() +
  scale_x_continuous(breaks=seq(-0.8,1.2,0.2), limits = c(-0.8,1.2)) +
  geom_vline(xintercept = 0.0, linetype = "dashed") +
  labs(subtitle="data source: http://aquatext.com/tables/algaegrwth.htm", 
       y="", 
       x="Growth rate (divisions per day)", 
       title="Growth Rate of Algae Species", 
       caption = "Author: stefanreifenberg.github.io",
       size= "Light intensity (lux)",
       col="Temperature °C")
plot
