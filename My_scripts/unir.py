
from PyPDF2 import PdfFileMerger
import sys
from os import listdir
from os.path import isfile, join

#print(sys.argv)
#pos = "/home/yago/Documents/Archivos/Burocracia/Bourse"

#onlyfiles = [f for f in listdir(sys.argv[1]) if isfile(join(sys.argv[1], f))]
onlyfiles = [f for f in listdir(sys.argv[1]) if isfile(join(sys.argv[1], f))]



for i in range(len(onlyfiles)):
#    onlyfiles[i] = sys.argv[1] + '/' + onlyfiles[i]
    if onlyfiles[i][-4:] == ".pdf":
        onlyfiles[i] = sys.argv[1] + '/' + onlyfiles[i]


nombre_archivo_salida = sys.argv[1] + '/' + "salida.pdf"

#print(nombre_archivo_salida)

fusionador = PdfFileMerger()


for pdf in onlyfiles:
    fusionador.append(open(pdf, 'rb'))

with open(nombre_archivo_salida, 'wb') as salida:
    fusionador.write(salida)
