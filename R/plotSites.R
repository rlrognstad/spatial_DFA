plotSites <-
function( mapObj, x, y, col, cex=2, ... ){
  # Load package
  require(maptools)

  # Plot map
  plot(1, type="n", xlim=attr(mapObj,"bbox")['x',], ylim=attr(mapObj,"bbox")['y',], ...)
  if( length(mapObj)>0 ) plot(mapObj, add=TRUE)

  #plot site locations
  points(x=x, y=y, pch=20, cex=cex, col=col)
}