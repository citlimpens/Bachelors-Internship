Cal_Semi_Curva <- function(rad=0, t1=0, t2=0, facA=0){
	
	source('Dist_Punto_Recta.R')

x1 = rad*cos(t1)
y1 = rad*sin(t1)

x2 = rad*cos(t2)
y2 = rad*sin(t2)

tm = (t1+t2)/2
m = tan(tm)

rn = rad + rad/20
x0 = rn * cos(tm)
y0 = rn * sin(tm)

DY = Dist_Punto_Recta (m, 0, c(x1, y1))

DX = Dist_Punto_Recta(-1/m, x1/m+y1,  c(x0, y0))

tt = atan(DY/DX)

a = rad - facA*rad

#print(paste('a =', a, 'DX =', DX))

if (DX > a){
	a = DX+DX/100
}

#print(paste('DX= ', DX, 'a= ',a))
#print(paste('a2-DX2= ', a*a - DX*DX))

b = abs(DY)*abs(a) / sqrt(a*a - DX*DX)
#print(c('-----------------------'))

t = seq(pi-tt,  pi+tt, length.out=1000)
r = 1/sqrt(cos(t)*cos(t)/(a*a) + sin(t)*sin(t)/(b*b))

t = t+tm

x = x0 + r*cos(t)
y = y0 + r*sin(t)

xy = list(x=x, y=y)

}