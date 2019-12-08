  rm(list = ls())
  
  tabla = read.csv('14.tas01-bk-start-end-pos-rep-xv7-filt1.csv', header = TRUE,)
  print(names(tabla))
  attach(tabla)
  
  source('GenCirculo.R')
  
  #tabla1_5 = tabla[XV7 >0 & XV7 <6, ]
  #tabla6_res = tabla[XV7 > 5, ]
  #write.csv(tabla1_5, 'tabla1_5.csv', row.names = FALSE)
  #write.csv(tabla6_res, 'tabla6_res.csv', row.names = FALSE)
  
  L = 16299
  
  rad = L / (2*pi)
  
  #pdf(file = 'graf05.pdf')
  
  xy = GenCirculo(rad)
  plot(xy$x, xy$y, type='l', xlab='', ylab = '', xaxt= 'n', yaxt= 'n', lwd=5)
  text(min(xy$x)-120, 0, '1', srt=90, cex=1)
  source('Cal_Semi_Curva.R')
  
  
  	color =  c('black', 'black', 'red', 'blue', 'green', 'chocolate', 'navy', 'purple','orange', 'gold')
  	x = as.numeric(XV4)
  	y = as.numeric(XV5)
  	ancho = as.numeric(XV6)
  	co = as.numeric(XV7)
  	np = length(x)
  	
  	for (i in 1:np){
  		if (x[i] < y[i]){
  			t1 = 2*pi*x[i]/L
  			t2 = 2*pi*y[i]/L
  			ss = Cal_Semi_Curva(rad, t1=pi-t1, t2=pi-t2, facA=.5)
  			if (co[i] == 0) {
    points(ss$x, ss$y, type='l', col=color[1], lwd=ancho[i]/5)
     		} else if (co[i] == 1) {
    points(ss$x, ss$y, type='l', col=color[2], lwd=ancho[i]/5)
  		  } else if (co[i] == 2) {
    points(ss$x, ss$y, type='l', col=color[3], lwd=ancho[i]/5)
  			} else if (co[i] == 3) {
    points(ss$x, ss$y, type='l', col=color[4], lwd=ancho[i]/5)
  			} else if (co[i] == 4) {
    points(ss$x, ss$y, type='l', col=color[5], lwd=ancho[i]/5)
  			} else if (co[i] == 5) {
    points(ss$x, ss$y, type='l', col=color[6], lwd=ancho[i]/5)
  			} else if (co[i] == 6) {
    points(ss$x, ss$y, type='l', col=color[7], lwd=ancho[i]/5)
  			} else if (co[i] == 7) {
    points(ss$x, ss$y, type='l', col=color[8], lwd=ancho[i]/5)
  			} else if (co[i] == 8) {
   	 points(ss$x, ss$y, type='l', col=color[9], lwd=ancho[i]/5)
  			} else if (co[i] == 9) {
    points(ss$x, ss$y, type='l', col=color[10], lwd=ancho[i]/5)
  			} else if (co[i] > 10) {
  				print (c('----------------------------------------------------'))
  			}
  		}
  	}	
  
  	
  	
  #dev.off()
  	
  
  
   