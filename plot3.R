# plot3.R
plot3 <- function(df) {
  png(filename = "~/ExData_Plotting1/plot3.png")
  par(bg = NA)
  plot(x = df$DateTime, y = df$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering", bg = "transparent")
  lines(x = df$DateTime, y = df$Sub_metering_2, col = "red")
  lines(x = df$DateTime, y = df$Sub_metering_3, col = "blue")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, cex = 0.9)
  dev.off()
}
plot3(household_power_consumption)