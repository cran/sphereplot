rgl.sphgrid <-
function (radius = 1, deggap = 15, longtype='H', add=FALSE) 
{
    if(add==F){open3d()}
    rgl.bg(fogtype = "exp2", color = "white")
    for(lat in seq(-90,90,by=deggap)){
    plot3d(sph2car(long=seq(0,360,len=100),lat=lat,radius=radius,deg=T),col='grey',add=T,type='l')
    }
    for(long in seq(0,360-deggap,by=deggap)){
    plot3d(sph2car(long=long,lat=seq(-90,90,len=100),radius=radius,deg=T),col='grey',add=T,type='l')
    }
    if(longtype=='H'){scale=15}
    if(longtype=='D'){scale=1}
    rgl.sphtext(long=0,lat=seq(-90,90,by=deggap), radius=radius, text = seq(-90,90,by=deggap), col = 'red')
    rgl.sphtext(long=seq(0,360-deggap,by=deggap),lat=0, radius=radius, text = seq(0,360-deggap,by=deggap)/scale, col = 'blue')
}

