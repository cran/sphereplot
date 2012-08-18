rgl.sphgrid <-
function (radius = 1, col.long='red', col.lat='blue', deggap = 15, longtype='H', add=FALSE) 
{
    if(add==F){open3d()}
    for(lat in seq(-90,90,by=deggap)){
    if(lat==0){col.grid='grey50'}else{col.grid='grey'}
    plot3d(sph2car(long=seq(0,360,len=100),lat=lat,radius=radius,deg=T),col=col.grid,add=T,type='l')
    }
    for(long in seq(0,360-deggap,by=deggap)){
    if(long==0){col.grid='grey50'}else{col.grid='grey'}
    plot3d(sph2car(long=long,lat=seq(-90,90,len=100),radius=radius,deg=T),col=col.grid,add=T,type='l')
    }
    if(longtype=='H'){scale=15}
    if(longtype=='D'){scale=1}
    rgl.sphtext(long=0,lat=seq(-90,90,by=deggap), radius=radius, text = seq(-90,90,by=deggap), deg=TRUE, col = col.lat)
    rgl.sphtext(long=seq(0,360-deggap,by=deggap),lat=0, radius=radius, text = seq(0,360-deggap,by=deggap)/scale, deg=TRUE, col = col.long)
}

