rm(list = ls())

source('GenCirculo.R')
source('Dist_Punto_Recta.R')

rad = 4
ss = GenCirculo(rad)

plot(ss$x, ss$y, type='l', xlim= c(-10, 10), ylim= c(-10, 10))

t1 = pi/5
t2 = pi/4

x1 = rad*cos(t1)
y1 = rad*sin(t1)
points(x1, y1) 

x2 = rad*cos(t2)
y2 = rad*sin(t2)
points(x2, y2)

tm = (t1+t2)/2
m = tan(tm)
x = seq(-7,7,.1)
y = m*x

points(x,y,type='l')

del = .5

rn = rad + del
x0 = rn * cos(tm)
y0 = rn * sin(tm)
points(x0, y0, col='red')


DY = Dist_Punto_Recta (m, 0, c(x1, y1))
print(DY)

DX = Dist_Punto_Recta(-1/m, x1/m+y1,  c(x0, y0))
print(DX)

a = DX + 1

b = DY*a/sqrt(a*a - DX*DX)

tt = DY/DX
print(paste('tt= ', tt))

t = seq(pi-tt,  pi+tt, .1)
r = 1/sqrt(cos(t)*cos(t)/(a*a) + sin(t)*sin(t)/(b*b))

t = t+tm

x = x0 + r*cos(t)
y = y0 + r*sin(t)

points(x,y, type='l', col='red')






