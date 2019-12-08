rm(list = ls())


source('GenCirculo.R')
source('Cal_Semi_Curva.R')

colores = c('red', 'blue', 'green', 'brown')

rad = 8
ss = GenCirculo(rad)

PerCir = 100

plot(ss$x, ss$y, type='l', xlim= c(-10, 10), ylim= c(-10, 10))

x = 10
y = 80


t1 = 2*pi*x/PerCir
t2 = 2*pi*y/PerCir
		
		print(t1)
		print(t2)
		points(c(rad*cos(t1), rad*cos(t2)), c(rad*sin(t1), rad*sin(t2)))
		points(c(-10, 10), c(0,0), type='l')
		points(c(0,0), c(-10, 10), type='l')
		
		ss = Cal_Semi_Curva(8, t1=t1, t2=t2, facA=.01)
		
		if (t1 < pi/4) {
			color = colores[1]
		} else if (pi/4 <= t1 & t1 < pi/2){
			color = colores[2]
		} else if (pi/2<= t1 & t1 < 3*pi/2) {
			color = colores[3]
		} else {
			color = colores[4]
		}
		points(ss$x, ss$y, type='l', col=rgb(0, 0, 1))	


