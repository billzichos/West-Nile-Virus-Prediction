wd <- "~/GitHub/West-Nile-Virus-Prediction"

setwd(wd)

# The following files are provided
#   - noaa_weather_qclcd_documentation.pdf
#   - weather.csv.zip
#   - spray.csv.zip
#   - train.csv.zip
#   - sampleSubmission.csv.zip
#   - test.csv.zip
#   - mapdata_copyright_openstreetmap_contributors.rds
#   - mapdata_copyright_openstreetmap_contributors.txt.zip
#   - west_nile.zip

source("~/GitHub/Get-Raw-Data/download.R")

downloadKaggle("predict-west-nile-virus", "noaa_weather_qclcd_documentation.pdf")
downloadSingleKaggleZip("predict-west-nile-virus", "weather.csv.zip", "weather.csv")
downloadSingleKaggleZip("predict-west-nile-virus", "spray.csv.zip", "spray.csv")
downloadSingleKaggleZip("predict-west-nile-virus", "train.csv.zip", "train.csv")
downloadSingleKaggleZip("predict-west-nile-virus", "sampleSubmission.csv.zip", "sampleSubmission.csv")
downloadSingleKaggleZip("predict-west-nile-virus", "test.csv.zip", "test.csv")
downloadKaggle("predict-west-nile-virus", "mapdata_copyright_openstreetmap_contributors.rds")
downloadSingleKaggleZip("predict-west-nile-virus", "mapdata_copyright_openstreetmap_contributors.txt.zip", "mapdata_copyright_openstreetmap_contributors.txt")
#downloadSingleKaggleZip("predict-west-nile-virus", "west_nile.zip")