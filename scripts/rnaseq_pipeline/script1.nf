//script1.nf
params.reads = "$projectDir/data/yeast/reads/*_{1,2}.fq.gz"
params.transcriptome = "$projectDir/data/yeast/transcriptome/*.fa.gz"
params.multiqc = "$projectDir/multiqc"

println "reads: $params.reads"