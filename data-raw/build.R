
# Package building function
#
# This function pulls data from HDX and then tidy them a bit to be ready for R




# Check that the usethis package is also installed. If not:
#install.packages("usethis")
library(roxygen2)
# For package manager: Manually delete Rd files first, then run code again. Roxygen2 will not overwrite existing package.
devtools::document()

#install.packages("pkgdown")
library("pkgdown")

#usethis::use_pkgdown()
#library("pkgdown")
#path<- ".../omarhgallego.com/static/r/APLA"
pkgdown::build_site() # this to build the website


library(dplyr)
usethis::use_github_action("pkgdown") # this to publish it on Github

#usethis::use_github_action("check-standard")


pkgdown::build_site()


## a few other exploration of the package
devtools::release()
# devtools::build_win(version = c("R-release", "R-devel"))

#install.packages("sinew")
#devtools::install_github("mdlincoln/docthis")
#library(readr)
#library(sinew)
#library(docthis)

library(readxl)
library(readr)


Data_Refugees_UNHCR <- read.csv("/Users/HammoudG/Documents/GitHub/APLA_Dataset/data-raw/Data_Refugees_UNHCR.csv")
save(Data_Refugees_UNHCR, file =  "data/Data_Refugees_UNHCR.RData", version = 2)
sinew::makeOxygen(Data_Refugees_UNHCR, add_fields = "source")

APLA_Database <- read.csv("/Users/HammoudG/Documents/GitHub/APLA_Dataset/data-raw/APLA_Database.csv")
save(APLA_Database, file =  "data/APLA_Database.RData", version = 2)
sinew::makeOxygen(APLA_Database, add_fields = "source")

APLA_Map <- read.csv("/Users/HammoudG/Documents/GitHub/APLA_Dataset/data-raw/Data_APLA_Maps.csv")
save(APLA_Map, file =  "data/APLA_Map.RData", version=2)
sinew::makeOxygen(APLA_Map, add_fields = "source")

