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


APLA_Database <- read_excel("data-raw/APLA Database.xlsx")
save(APLA_Database, file =  "data/APLA_Database.RData")
sinew::makeOxygen(APLA_Database, add_fields = "source")


APLA_Regulatory_Complexity <- read_excel("data-raw/APLA Regulatory Complexity.xlsx",
                                         sheet = "Tabelle1")
save(APLA_Regulatory_Complexity, file =  "data/APLA_Regulatory_Complexity.RData")
sinew::makeOxygen(APLA_Regulatory_Complexity, add_fields = "source")


APLA_Liberalisation <- read_excel("data-raw/APLA Liberalisation.xlsx",
                                  sheet = "Tabelle1")
save(APLA_Liberalisation, file =  "data/APLA_Liberalisation.RData")
sinew::makeOxygen(APLA_Liberalisation, add_fields = "source")

Data_APLA <- read_csv("data-raw/Data_APLA.csv")
save(Data_APLA, file =  "data/Data_APLA.RData")
sinew::makeOxygen(Data_APLA, add_fields = "source")


Data_APLA_1 <- read_csv("data-raw/Data_APLA_1.csv")
save(Data_APLA_1, file =  "data/Data_APLA_1.RData")
sinew::makeOxygen(Data_APLA_1, add_fields = "source")


APLA_Map <- read.csv("data-raw/Data_APLA_Maps.csv")
save(APLA_Map, file =  "data/APLA_Map.RData")
sinew::makeOxygen(APLA_Map, add_fields = "source")
