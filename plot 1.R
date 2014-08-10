dat <- read.table("four.txt", sep = ";", header = T, na.strings = "?")
dat$nDate <- as.Date(dat$Date, "%d/%m/%Y")
dat2 <- dat[dat$nDate == "2007-02-01" | dat$nDate == "2007-02-02", ]

#plot 1 
png("plot1.png")
hist(dat2$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()

#plot 2
png("plot2.png")
dat2.days <-weekdays(dat2$nDate, abbr= T)

