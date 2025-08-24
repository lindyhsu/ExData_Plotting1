# plot1.R
library(magrittr)
# get_data
get_data <- function(dest_file, ex_dir) {
  data_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(data_url, destfile = dest_file) # 下載壓縮檔
  unzip(dest_file, exdir = ex_dir) # 解壓縮
  txt_path <- paste0(ex_dir, "/household_power_consumption.txt")
  df_header <- txt_path %>%
    readLines(n = 1) %>%
    strsplit(split = ";") %>%
    unlist() # 取得變數名稱
  df <- read.table(txt_path, sep = ";", na.strings = "?", skip = 66637, nrows = 2880, stringsAsFactors = FALSE, col.names = df_header) # 讀入資料
  df$Date <- as.Date(df$Date, format = "%d/%m/%Y") # 轉換為日期型別
  df$DateTime <- paste(df$Date, df$Time) %>%
    as.POSIXct() # 轉換為日期時間型別
  return(df)
}
plot1 <- function(df) {
  png(filename = "~/ExData_Plotting1/plot1.png")
  par(bg = NA)
  hist(df$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", bg = "transparent")
  dev.off()
}
household_power_consumption <- get_data(dest_file = "~/Downloads/household_power_consumption.zip", ex_dir = "~/ExData_Plotting1")
plot1(household_power_consumption)