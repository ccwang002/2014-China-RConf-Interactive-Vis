library(grid)

grid.newpage()
pushViewport(plotViewport(c(5, 4, 2, 2)))
pushViewport(dataViewport(
  pressure$temperature,
  pressure$pressure,
  name="plotRegion"
))
grid.points(pressure$temperature,
            pressure$pressure,
            name="dataSymbols")
grid.rect(gp=gpar(fill=0))
grid.xaxis()
grid.yaxis()

grid.edit("dataSymbols", pch=10)
upViewport(1)
grid.rect(gp=gpar(lty="dashed", fill=0, lwd=4))
upViewport(1)
grid.rect(gp=gpar(lty="dotted", fill=0, lwd=4))

downViewport("plotRegion")
grid.text(
  "Pressure (mm Hg)\nversus\nTemperature (Celsius)",
  just="right",
  x=unit(250, "native"), y=unit(600, "native")
)

