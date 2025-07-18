library(quantmod)

# Get data and store in variables
tsla <- getSymbols("TSLA", from="2020-01-01", auto.assign = FALSE)
aapl <- getSymbols("AAPL", from="2020-01-01", auto.assign = FALSE)
spy  <- getSymbols("SPY",  from="2020-01-01", auto.assign = FALSE)

# Merge all into one master table by date

library(data.table)
master_dt <- as.data.table(data.frame(Date = index(master), coredata(master)))

