IdenticasIZQ_DER <- function(xV2=0, xV3=0){
	nl = length(xV2)
	xV = rep(0, nl)

	i= 1
	while (i <= nl){
     		x = as.character(xV2[i])
          	y = as.character(xV3[i])
		nc = nchar(x)
		j = nc 
		su = 0
            while (j > 0)
			if(substr(x,j,j) == substr(y,j,j)){
				su = su+1
				j = j-1
			} else {
				j = 0
			}
		xV[i] = su
		i = i+1
	}
	res = xV
}
