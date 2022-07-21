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
