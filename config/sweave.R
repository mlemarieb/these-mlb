# Fichiers nécessaires pour sweave sous mac os
rm(list=ls(all=TRUE))
sessionInfo()
setwd("/Users/Marie/Documents/these-s45931/")
Sys.getenv("LC_CTYPE")
pop<-Sys.getenv("LC_CTYPE")
Sys.setlocale("LC_CTYPE", "fr_FR.ISO8859-1")
options(encoding="ISO8859-1") 
Sweave("thesemarie.Rnw",encoding='latin1')
#Sys.setlocale("LC_CTYPE", pop)