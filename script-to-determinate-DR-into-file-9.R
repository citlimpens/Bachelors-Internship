rm(list = ls())

file = "11.tas01-bk-start-end-pos-rep"

tabla = read.table(file, header = FALSE, sep = ",")

print(names(tabla))
attach(tabla)

#source('Repeticiones40.R')
#source('Repeticiones20.R')
source('IdenticasIZQ_DER.R')
#source('GenCirculo.R')

#cc = IdenticasIZQ_DER(V2, V3)

#print(cc[1:20])

XV1 = V1
XV2 = V2
XV3 = V3
XV4 = V4
XV5 = V5
XV6 = V6
XV7 = IdenticasIZQ_DER(XV2, XV3)

#XV8 = Repeticiones40(XV4, XV5)
#XV9 = Repeticiones20(XV4)
#XV10 = Repeticiones20(XV5)


mat = data.frame(XV1,XV2, XV3, XV4, XV5, XV6, XV7)
write.table(mat, '11.tas01-bk-start-end-pos-rep-xv7.csv', sep=',', row.names = FALSE)


