# This function will load data from a .csv file from the class Dropbox data site.
# It only works for csv files.
# 
# For example, to load the spend.csv data and call the loaded data sp, type 
# sp <- dbfile("spend")
# 
# You must source this function file first before you can use it. 
# Place the file in your working directory.
# Use the source command to sorce the function to your environment.
# e.g. for me: source('~/Dropbox/syncd_r_data/econometrics/db_csv_data_import.R')
# where ~/Dropbox/syncd_r_data/econometrics/ is my working directory.
# 
# If you place this source command in your .Rprofile file, the function will 
# load automatically when you start RStudio.
#
dbfile <- function(dfn)
{
  ftype <- ".csv"
  fnm <- paste0(dfn, ftype, sep="")
  dburl1 <- "https://dl.dropboxusercontent.com/u/154124298/Econometrics_data/"
  dburl2 <- paste0(dburl1, fnm, sep="")
  read.table(dburl2,header=TRUE,sep=",")
}