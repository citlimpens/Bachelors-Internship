rm(list = ls())

source('Dist_Punto_Recta.R')

p0 = c(0, 1)

m = 1
b = -m*p0[1] + p0[2]
print(b)

pp =  c(1, 1)

d = Dist_Punto_Recta(m, b, pp)
print(paste('distancia= ',d))

x = seq(-10,10, .1)
y = m * (x - p0[1]) + p0[2]

plot(x,y, type = 'l', xlim= c(-10, 10), ylim=c(-10, 10))
points(pp[1], pp[2])