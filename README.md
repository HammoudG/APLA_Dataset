# README

# Instructions to install APLA Package

library(devtools)

library(usethis)

install_github("hammoudg/apla_dataset")

library(APLA)

After that, re-start R to see whole package info in the Package section using Rstudio

To load data: 
APLA<- APLA::APLA_Database //
APLA_Map<- APLA::APLA_Map //
APLA_Data_1<- APLA::Data_Refugees_UNHCR

# APLA_Dataset
Package and Data for the replication of the paper **A Liberal Region in a World of Closed Borders? The Liberalization of Asylum Policies in Latin America, 1990 to 2020.**

The APLA_Paper in the vignette includes the replication code for all the graphs and charts of the paper, as well as the calculation of the main aggregate variables of interest: regulatory complexity and liberalisation. 

**APLA Database.csv in /data-raw is the original APLA Dataset.** APLA_Dataset contains the whole data codified using the APLA methodology. It include 19 Latin American countries, using 65 indicators for a 31-years period. 57 of those indicator refer to national legislation, and 8 to the ratification of relevant international agreements. 

Online Appendix in /pdf include: 1. The coding frame used to codify APLA, 2. The Codebook with the Rules for the codification, 3. A series of maps with the major policy measures adopted over time in each country. 

Data_APLA_Maps is a slightly modified versions of the dataset above, which allows to better plot the countries in the Latin American region that have been codified. 
Data_Refugees_UNHCR includes number on 'refugees and people in a refugee-like situation' as identified by the UNHCR, and data on the 'total population' of each country in the specific year, as calculated by UNDESA.




