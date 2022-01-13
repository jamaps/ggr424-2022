library(ggplot2)

setwd("~/Dropbox/teach/ggr424-2022/classes/2")

df <- read.csv("cars_canada.csv")

df$rate <- df$cars / df$people

df

ggplot() + 
  geom_point(aes(x = df$year, y = df$cars)) +
  geom_point(aes(x = df$year, y = df$people)) + 
  geom_line(aes(x = df$year, y = df$cars)) +
  geom_line(aes(x = df$year, y = df$people)) +
  theme_minimal()


ggplot() + 
  geom_line(aes(x = df$year, y = df$rate))
