rm(list = ls())

tabla = read.table("d1b_complete_file_with_coordenate_to_calculate_DR_and_plot_radial_color.txt", header = FALSE, sep = "")

print(names(tabla))
attach(tabla)

xy = paste(V4,'-',V5, sep='')
xV2 = V2
xV3 = V3

nl = length(xy)
print(nl)

xV4 = rep(0, nl)

i = 1
while (i <= nl){
      if (xV4[i] != 0){
         i = i+1
      } else {
	   rec = xy[i]
	   pat = paste('^', rec, '$', sep='')
#	print(pat)
	   indices = grep(pat, xy)
#	print(indices)
# print(tabla[indices,])
	   xV4[indices] = length(indices)
         i = i+1
      }
}

tablaN = paste(xV2, xV3, xy, xV4-1)
print(tablaN[1:10])

print(length(xV4))

xV5 = rep(0, nl)




