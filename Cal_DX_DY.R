Cal_DX_DY <- function(tm=0, x1=0, y1=0, rad =0, del=0){
	m = tan(tm)
	rn = rad + del
	x0 = rn * cos(tm)
	y0 = rn * sin(tm)
	
	DY = Dist_Punto_Recta (m, 0, c(x1, y1))
	DX = Dist_Punto_Recta(-1/m, x1/m+y1,  c(x0, y0))
	
	res =  c(DX, DY)
}