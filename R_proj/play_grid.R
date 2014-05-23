library(grid)

vp <- viewport(x=0.5, y=0.5, width=0.9, height=0.9)

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
grid.rect(gp=gpar(lty="dashed", fill=0))
upViewport(1)
grid.rect(gp=gpar(lty="dotted", fill=0))

downViewport("plotRegion")
grid.text("Pressure (mm Hg)\nversus\nTemperature (Celsius)",
          just="right",
          x=unit(150, "native"), y=unit(600, "native"))

