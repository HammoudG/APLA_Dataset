<<<<<<< HEAD
# Package building function
#
# This function pulls data from HDX and then tidy them a bit to be ready for R

# Check that the usethis package is also installed. If not:
#install.packages("usethis")
devtools::document()

#install.packages("pkgdown")

#library("pkgdown")
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


Data_Refugees_UNHCR <- read.csv("C:/Users/omarh/Desktop/Git_APLA/APLA_Dataset/data-raw/Data_Refugees_UNHCR.csv")
save(Data_Refugees_UNHCR, file =  "data/Data_Refugees_UNHCR.RData")
sinew::makeOxygen(Data_Refugees_UNHCR, add_fields = "source")

APLA_Database <- read.csv("data-raw/APLA_Database.csv")
save(APLA_Database, file =  "data/APLA_Database.RData")
sinew::makeOxygen(APLA_Database, add_fields = "source")

APLA_Map <- read.csv("data-raw/Data_APLA_Maps.csv")
save(APLA_Map, file =  "data/APLA_Map.RData")
sinew::makeOxygen(APLA_Map, add_fields = "source")=
=======
# Package building function
#
# This function pulls data from HDX and then tidy them a bit to be ready for R

# Check that the usethis package is also installed. If not:
#install.packages("usethis")
devtools::document()

#install.packages("pkgdown")

#library("pkgdown")
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


Data_Refugees_UNHCR <- read.csv("C:/Users/omarh/Desktop/Git_APLA/APLA_Dataset/data-raw/Data_Refugees_UNHCR.csv")
save(Data_Refugees_UNHCR, file =  "data/Data_Refugees_UNHCR.RData")
sinew::makeOxygen(Data_Refugees_UNHCR, add_fields = "source")

APLA_Database <- read.csv("data-raw/APLA_Database.csv")
save(APLA_Database, file =  "data/APLA_Database.RData")
sinew::makeOxygen(APLA_Database, add_fields = "source")

APLA_Map <- read.csv("data-raw/Data_APLA_Maps.csv")
save(APLA_Map, file =  "data/APLA_Map.RData")
sinew::makeOxygen(APLA_Map, add_fields = "source")=
>>>>>>> 0939008be34f3170a5d71fbc1fbe7379900bd9a3
