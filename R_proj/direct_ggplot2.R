require("ggplot2")
g <- qplot(clarity, data=diamonds, fill=cut, geom="bar")
ggsave(file="test.svg", plot=image, width=10, height=8)