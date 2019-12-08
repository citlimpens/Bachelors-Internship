rm(list = ls())

#file = "/Users/lgsantos/Desktop/Carlos_Circulos_jun0115/Carlos_jun0215/bk-tas12-listo-para-dr.txt"
file = "/Users/lgsantos/Desktop/Carlos_Circulos_jun0115/Carlos_jun0215/tas06-listo-para-dr.txt"

tabla = read.table(file, header = FALSE, sep = "")

print(names(tabla))
attach(tabla)

source('Repeticiones40.R')
source('Repeticiones20.R')
source('IdenticasIZQ_DER.R')
source('GenCirculo.R')

#cc = IdenticasIZQ_DER(V4, V5)

#print(cc[1:20])

XV1 = V1
XV2 = V2
XV3 = V3
XV4 = V4
XV5 = V5
XV6 = IdenticasIZQ_DER(XV3, XV4)

#XV8 = Repeticiones40(XV4, XV5)
#XV9 = Repeticiones20(XV4)
#XV10 = Repeticiones20(XV5)


mat = data.frame(XV1, XV2, XV3, XV4, XV5, XV6)
write.table(mat, 'tabla_tas06-listo-para-dr.csv', sep=',', row.names = FALSE)

