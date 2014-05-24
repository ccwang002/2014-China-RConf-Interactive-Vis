require("ggplot2")
g <- qplot(clarity, data=diamonds, fill=cut, geom="bar")
ggsave(file="ggplot2_direct.svg", plot=image, width=10, height=8)