nextflow.enable.dsl = 2

process INDEX {
  input:
  val kmer
  path transcriptome

  script:
  """
  salmon index -t $transcriptome -i index -k $kmer .
  """
}

transcriptome_ch = channel.fromPath('../data/yeast/transcriptome/Saccharomyces_cerevisiae.R64-1-1.cdna.all.fa.gz')
kmer_ch = channel.of(21)

workflow {
  INDEX(kmer_ch, transcriptome_ch)
}
