################################################################
# This script calls related for the Covid-19 dashboard scripts #
# Files are stored at F://Covid-19/R-Model (NAS drive)         #
# Version 1, 08/09/2020                                        #
################################################################

##############################
# 1. Load required libraries #
##############################
#Now is the time

# 1. Load required libraries ----------------------------------------------------------
for (j in 1:1) {
  
  
  library(tidyverse)
  library(zoo)
  library(DT)
  library(shiny)
  library(shinythemes)
  library(ggplot2)
  library(rhdx)
  library(readxl)
  library(httr)
  library(jsonlite)
  library(rlang)
  library(plotly)
  library(ggforce)
  library(Hmisc)
  library(formattable)
  
}
######################
# 2. Get latest data #
######################

# ons_data once downloaded needs to be opened in excel
# and saved as an excel file because it doesn't yet
# save correctly
for (i in 1:1) {
  
  source("F://Covid-19/R-Model/Scripts_v2/jh_global_data_v2.R")
  source("F://Covid-19/R-Model/Scripts_v2/uk_nation_data_v2.R")
  source("F://Covid-19/R-Model/Scripts_v2/uk_region_data_v2.R")
  source("F://Covid-19/R-Model/Scripts_v2/uk_ltla_data_v3.R")
  source("F://Covid-19/R-Model/Scripts_v2/uk_death_data_v3.R")
  source("F://Covid-19/R-Model/Scripts_v2/uk_nhs_region_data_v2.R")
  
  
  # Don't use scientific notation on the graphs
  options(scipen=99999)
  yesterday <- Sys.Date()-1
  
  ################
  # 3. Set up UI #
  ################
  
  source("F://Covid-19/R-Model/Test Scripts/ui_test.R")
  
  ####################
  # 4. Set up Server # 
  ####################
  
  source("F://Covid-19/R-Model/Test Scripts/server_test.R")
  
}
##########################
# 5. Run the application #
##########################

shinyApp(ui = ui, server = server) 

