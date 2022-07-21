# las secuencias mapeadas se suelen guaradar
# en archivos BAM
# la funcion readGAlignments() de la paqueteria GenomicAlignments
# permite leer los archivos BAM

BiocManager::install("GenomicAlignments")
library(GenomicAlignments)

readGAlignments()

reads <- readGAlignments("archivo")

reads <- readGAlignments("data/chr20.bam.gz")

seqnames(reads) # informacion sobre las lecturas del cromosoma
seqnames(reads)

start(reads) # inicio de secuencia
start(reads)

end(reads) # fin de secuencia
end(reads)

# computing coverage
coverage(reads)
coverage(reads)

# las unidades principales en el analisis en un experimento de
# chip-seq son peak calls que sobresaltan regiones
# del cromosoma con altas concentraciones de lecturas
# estos picos se suelen guardar en archivos tipo BED

# cargando archivos tipo BED
library(rtracklayer)
peaks <- import.bed("archivo")

#obteniendo las coordenadas de los peak
chrom(peaks)
ranges(peaks)

# extrayendo los puntajes de los peak
# cada puntaje cuantifica la fuerza de cada peak
score(peaks)


### chip-seq workflow ###
# obtener las secuencias y localizar su posicion en el genoma
# identificar peak calls
# import data to R
# quality control
# identify interesting peaks, compare samples
# interpretation

####
# resumiendo resultados
# heatmap
# son utiles para remarcar diferencias y similitudes entre las muestras
# la funcion heatmap()
heatmap(reads) # se coloca objeto con matriz numerica de reads

# otra forma de de comparar muestras es considerar el numero
# de peaks entre muestras asi como los peaks unicos en cada muestra
# la paqueteria UpSetR genera plot utiles para esto

install.packages("UpSetR")
library(UpSetR)

upset(fromList(peak_seats)) # se coloca objeto con peak calls
