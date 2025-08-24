# plot4.R
plot4 <- function(df) {
  png(filename = "~/ExData_Plotting1/plot4.png")
  par(bg = NA)
  par(mfrow = c(2, 2))
  plot(x = df$DateTime, y = df$Global_active_power, ylab = "Global Active Power", xlab = "", type = "l", bg = "transparent")
  plot(x = df$DateTime, y = df$Voltage, ylab = "Voltage", xlab = "datetime", type = "l", bg = "transparent")
  plot(x = df$DateTime, y = df$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering", bg = "transparent")
  lines(x = df$DateTime, y = df$Sub_metering_2, col = "red")
  lines(x = df$DateTime, y = df$Sub_metering_3, col = "blue")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, cex = 0.9, bty = "n")
  plot(x = df$DateTime, y = df$Global_reactive_power, ylab = "Global_reactive_power", xlab = "datetime", type = "l", bg = "transparent")
  dev.off()
}
plot4(household_power_consumption)