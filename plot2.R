# plot2.R
plot2 <- function(df) {
  png(filename = "~/ExData_Plotting1/plot2.png")
  par(bg = NA)
  plot(x = df$DateTime, y = df$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)", bg = "transparent")
  dev.off()
}
plot2(household_power_consumption)