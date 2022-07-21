# las secuencias mapeadas se suelen guaradar
# en archivos BAM
# la funcion readGAlignments() de la paqueteria GenomicAlignments
# permite leer los archivos BAM

BiocManager::install("GenomicAlignments")
library(GenomicAlignments)

readGAlignments()

reads <- readGAlignments("archivo")
seqnames(reads) # informacion sobre las lecturas del cromosoma
start(reads) # inicio de secuencia
end(reads) # fin de secuencia

# computing coverage
coverage(reads)

# las unidades principales en el analisis en un experimento de
# chip-seq son peak calls que sobresaltan regiones
# del cromosoma con altas concentraciones de lecturas

