car2sph <-
function(x,y,z,deg=FALSE){
	if(is.matrix(x) || is.data.frame(x)){
		if(ncol(x) == 1){x=x[,1]}
        else	if(ncol(long) == 2){y = x[, 2];x = x[, 1]}
        else	if(ncol(long) == 3){z = x[, 3];y = x[, 2];x = x[, 1]}
    }
    if(missing(x) | missing(y) | missing(z)){stop('Missing full cartesian 3D input data.')}
	long=atan2(y,x)
	lat=atan2(z,(y/sin(long)))
	radius=sqrt(x^2+y^2+z^2)
	if(deg){
		long=long*180/pi
		lat=lat*180/pi
	}
	return=cbind(long=long,lat=lat,radius=radius)
	}
