
#PART1
setwd("C:\\Users\\it24101408\\Desktop\\IT24101408_Lab5")
Delivery_Times<-read.table("Exercise - Lab 05.txt",header=TRUE,sep=",")
fix(Delivery_Times)
attach(Delivery_Times)
#Q2
hist(Delivery_Times$Delivery_Time,
     breaks = seq(20,70, by = 5),
     main = "Histogram of Delivery Times",
     xlab = "Delivery Times(minutes)",
     ylab = "Frequency",
     right = TRUE)
#Q3
#The histogram seems to have a right skew, with most delivery times clustered between 30 and 50 minutes, while a few data points stretch out beyond 60 minutes.

#Q4
# Compute the frequency distribution
freq_dist <- hist(Delivery_Times$Delivery_Time, 
                  breaks = seq(20, 70, by = 5), 
                  plot = FALSE)

# Get the cumulative frequency
cum_freq <- cumsum(freq_dist$counts)

# Plot the cumulative frequency polygon (ogive)
plot(freq_dist$mids, cum_freq, 
     type = "l", 
     main = "Cumulative Frequency Polygon (Ogive)", 
     xlab = "Delivery Time (minutes)", 
     ylab = "Cumulative Frequency", 
     lwd = 2)

