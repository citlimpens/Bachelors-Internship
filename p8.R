rm(list = ls())

tabla = read.csv('tabla_completa.csv', header = TRUE,)

print(names(tabla))
attach(tabla)

source('Repeticiones40.R')
source('Repeticiones20.R')
source('IdenticasIZQ_DER.R')
source('GenCirculo.R')

#tarea 22222222222

#tabla1_5 = tabla[XV7 >0 & XV7 <6, ]
#tabla6_res = tabla[XV7 > 5, ]
#write.csv(tabla1_5, 'tabla1_5.csv', row.names = FALSE)
#write.csv(tabla6_res, 'tabla6_res.csv', row.names = FALSE)


#tarea 333333333

L = 16299

rad = L / (2*pi)

pdf(file = 'graf05.pdf')

xy = GenCirculo(rad)
plot(xy$x, xy$y, type='l', xlab='', ylab = '', xaxt= 'n', yaxt= 'n')

source('Cal_Semi_Curva.R')


tarea = 5

if (tarea == 3) {
	color =  c('red', 'green', 'blue', 'orange', 'black')
	x = as.numeric(XV2)
	y = as.numeric(XV3)
	v9 = as.numeric(XV9)
	np = length(x)
	
	for (i in 1:np){
		if (x[i] < y[i]){
			t1 = 2*pi*x[i]/L
			t2 = 2*pi*y[i]/L
			ss = Cal_Semi_Curva(rad, t1=t1, t2=t2, facA=.01)
			if (0 < v9[i] & v9[i] < 6){
				points(ss$x, ss$y, type='l', col=color[1])
   			} else if ( (5 < v9[i] & v9[i] < 11)){
				points(ss$x, ss$y, type='l', col=color[2])
			} else if ( (10 < v9[i] & v9[i] < 16)){
				points(ss$x, ss$y, type='l', col=color[3])
			} else if ( (15 < v9[i] & v9[i] < 21)){
				points(ss$x, ss$y, type='l', col=color[4])
			} else if ( (500 < v9[i] & v9[i] < 1001)){
				points(ss$x, ss$y, type='l', col=color[5])
			}
		}
	}
} else if (tarea == 4) {
	color =  c('black', 'red', 'green', 'yellow', 'orange', 'violet', 'grey', 'blue', 'chartreuse4', 'blue3')
	x = as.numeric(XV2)
	y = as.numeric(XV3)
	v7 = as.numeric(XV7)
	np = length(x)
	
	for (i in 1:np){
		if (x[i] < y[i]){
			t1 = 2*pi*x[i]/L
			t2 = 2*pi*y[i]/L
			ss = Cal_Semi_Curva(rad, t1=t1, t2=t2, facA=.01)
			if (v7[i] == 1) {
				points(ss$x, ss$y, type='l', col=color[1])
   			} else if ( v7[i] == 2) {
				points(ss$x, ss$y, type='l', col=color[2])
			} else if (v7[i] == 3) {
				points(ss$x, ss$y, type='l', col=color[3])
			} else if (v7[i] == 4) {
				points(ss$x, ss$y, type='l', col=color[4])
			} else if (v7[i] == 5) {
				points(ss$x, ss$y, type='l', col=color[5])
			} else if (v7[i] == 6) {
				points(ss$x, ss$y, type='l', col=color[6])
			} else if (v7[i] == 7) {
				points(ss$x, ss$y, type='l', col=color[7])
			} else if (v7[i] == 8) {
				points(ss$x, ss$y, type='l', col=color[8])
			} else if (v7[i] == 9) {
				points(ss$x, ss$y, type='l', col=color[9])
			} else if (v7[i] == 10) {
				points(ss$x, ss$y, type='l', col=color[10])
			} else if (v7[i] > 10) {
				print (c('----------------------------------------------------'))
			}
		}
	}	
}  else if (tarea == 5) {
	color =  c('black', 'red', 'green', 'yellow', 'orange', 'violet', 'grey', 'blue', 'chartreuse4', 'blue3')
	x = as.numeric(XV2)
	y = as.numeric(XV3)
	v7 = as.numeric(XV7)
	v9 = as.numeric(XV9)

	np = length(x)
	
	for (i in 1:np){
		if (x[i] < y[i]){
			t1 = 2*pi*x[i]/L
			t2 = 2*pi*y[i]/L
			ss = Cal_Semi_Curva(rad, t1=t1, t2=t2, facA=.01)
			if (v7[i] == 1) {
				points(ss$x, ss$y, type='l', col=color[1], lwd=v9[i]/2)
   			} else if ( v7[i] == 2) {
				points(ss$x, ss$y, type='l', col=color[2], lwd=v9[i]/2)
			} else if (v7[i] == 3) {
				points(ss$x, ss$y, type='l', col=color[3], lwd=v9[i]/2)
			} else if (v7[i] == 4) {
				points(ss$x, ss$y, type='l', col=color[4], lwd=v9[i]/2)
			} else if (v7[i] == 5) {
				points(ss$x, ss$y, type='l', col=color[5], lwd=v9[i]/2)
			} else if (v7[i] == 6) {
				points(ss$x, ss$y, type='l', col=color[6], lwd=v9[i]/2)
			} else if (v7[i] == 7) {
				points(ss$x, ss$y, type='l', col=color[7], lwd=v9[i]/2)
			} else if (v7[i] == 8) {
				points(ss$x, ss$y, type='l', col=color[8], lwd=v9[i]/2)
			} else if (v7[i] == 9) {
				points(ss$x, ss$y, type='l', col=color[9], lwd=v9[i]/2)
			} else if (v7[i] == 10) {
				points(ss$x, ss$y, type='l', col=color[10], lwd=v9[i]/2)
			} else if (v7[i] > 10) {
				print (c('----------------------------------------------------'))
			}
		}
	}	
}

dev.off()

	
	


 