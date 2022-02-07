#### Preamble ####
# Purpose: Clean the survey data downloaded from [...UPDATE ME!!!!!]
# Author: Rohan Alexander [CHANGE THIS TO YOUR NAME!!!!]
# Data: 3 January 2021
# Contact: rohan.alexander@utoronto.ca [PROBABLY CHANGE THIS ALSO!!!!]
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the ACS data and saved it to inputs/data
# - Don't forget to gitignore it!
# - Change these to yours
# Any other information needed?


#### Workspace setup ####
# Use R Projects, not setwd().
library(tidyverse)
library(opendatatoronto)

#From https://open.toronto.ca/dataset/fire-incidents/

# get all resources for this package
resources <- list_package_resources("fc4d95a6-591f-411f-af17-327e6c5d03c7")

crimes <- resources %>% 
  get_resource()

write_csv(crimes, "inputs/data/crimes.csv")