wd <- "~/GitHub/West-Nile-Virus-Prediction"

setwd(wd)

# read in the training file and prepare for combining with test.
train <- read.csv("train.csv", as.is = TRUE)
train$Source <- "Train"
train$Id <- 0

# read in the test file and prepare for combining with train.
test <- read.csv("test.csv", as.is = TRUE)
test$Source <- "Test"
test$NumMosquitos <- 0
test$WnvPresent <- 0

# combine the data files for feature generation
library("dplyr")
train <- select(train, Id, Date, Address, Species, Block, Street, Trap, AddressNumberAndStreet, Latitude, Longitude, AddressAccuracy, NumMosquitos, WnvPresent, Source)
test <- select(test, Id, Date, Address, Species, Block, Street, Trap, AddressNumberAndStreet, Latitude, Longitude, AddressAccuracy, NumMosquitos, WnvPresent, Source)

df <- rbind(train, test)

# derive some date/time-related variables
df$Date <- as.Date(df$Date)
library("lubridate")
df$Date.Quarter <- quarter(df$Date)
df$Date.Month <- month(df$Date)
df$Date.Wkdy <- wday(df$Date)
df$Date.LogNumeric <- log10(as.numeric(as.POSIXct(df$Date)))
