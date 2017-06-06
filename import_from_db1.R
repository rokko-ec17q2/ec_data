# Assign the file name as the data frame name in the next line E.g. dfn <- ivv, or dfn <- prodn
dfn <- "ivv"
ftype <- ".csv"
fnm <- paste0(dfn, ftype, sep="")
dburl1 <- "https://dl.dropboxusercontent.com/u/154124298/Econometrics_data/"
dburl2 <- paste0(dburl1, fnm, sep="")
# Read in the data as a d.f and assign it to a character string (dfn)
assign(dfn, read.table(dburl2,header=TRUE,sep=","))
# Delete the stuff we don't need
rm(dfn,ftype,fnm,dburl1,dburl2)