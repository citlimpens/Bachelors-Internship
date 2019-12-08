rm(list = ls())


source('GenCirculo.R')
source('Cal_Semi_Curva.R')

rad = 8
ss = GenCirculo(rad)

np = 100
lx = runif(np, min=0, max=100)
ly = runif(np, min=0, max=100)

plot(ss$x, ss$y, type='l', xlim= c(-10, 10), ylim= c(-10, 10))

for (i in 1:np){
	x = lx[i]
	y = ly[i]
	if (x <= y){
		t1 = 2*pi*x/100
		t2 = 2*pi*y/100
		xy = Cal_Semi_Curva(rad=rad, t1=t1, t2=t2, inc_rad=.3, PDX=.5)
		points(xy$x, xy$y, type='l', col='red')	
	}
}

