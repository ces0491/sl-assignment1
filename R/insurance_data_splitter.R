rm(list=ls())

base_data_dir <- './inst/extdata'
my_seed <- 756

#setwd("directory where data file is saved")
fulldata <- read.csv(glue::glue("{base_data_dir}/insurance.csv")) #Read in all 1338 observations

set.seed(my_seed) #Insert your own project number here
#Example: If your project number is 10, run the line set.seed(10)

my_data <- fulldata[sample(1:nrow(fulldata), 500, replace = FALSE), ]

write.csv(my_data, glue::glue("{base_data_dir}/my_insurance.csv"), row.names = FALSE)