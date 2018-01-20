library(tidyverse) # :)
library(readxl) # read excel files
library(pracma) # needed for movavg function
library(viridis) # colors
library(data.table) # faster BA data loading
library(rsq) # calculate r-squared
library(patchwork)
#library(Rmisc) # calculate confidence intervals

# 
data <- read_excel("tidydata.xlsx", col_names = TRUE)
View(data)


