rm(list = ls())


source('GenCirculo.R')
source('Cal_Semi_Curva.R')

colores = c('red', 'blue', 'green', 'brown')

rad = 8
ss = GenCirculo(rad)

PerCir = 100

plot(ss$x, ss$y, type='l', xlim= c(-10, 10), ylim= c(-10, 10))

np =100
x = runif(np, min=0, max=PerCir)
y = runif(np, min=0, max=PerCir)


for (i in 1:np){
	if (x[i] < y[i]){
		t1 = 2*pi*x[i]/PerCir
		t2 = 2*pi*y[i]/PerCir
		
		print(t1)
		print(t2)
		
		ss = Cal_Semi_Curva(8, t1=t1, t2=t2, facA=.5)
		
		if (t1 < pi/4) {
			color = colores[1]
		} else if (pi/4 <= t1 & t1 < pi/2){
			color = colores[2]
		} else if (pi/2<= t1 & t1 < 3*pi/2) {
			color = colores[3]
		} else {
			color = colores[4]
		}
		points(ss$x, ss$y, type='l', col=color)	
	}
}
