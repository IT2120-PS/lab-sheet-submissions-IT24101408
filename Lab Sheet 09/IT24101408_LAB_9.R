setwd("C:\\Users\\hp\\Desktop\\IT24101408_LAB_9")
#exercise 
#part 1
set.seed(123)  
baking_time <- rnorm(25, mean = 45, sd = 2)
baking_time
#part 2
t.test(baking_time, mu = 46, alternative = "less")
