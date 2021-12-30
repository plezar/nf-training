#!/usr/bin/env nextflow

nextflow.enable.dsl=2

/*  A multi-line
    coment */

// A single-line comment

params.input = "data/yeast/reads/ref1_1.fq.gz"

workflow {

  input_ch = Channel.fromPath(params.input)

  NUM_LINES(input_ch)

  NUM_LINES.out.view()

}

process NUM_LINES {

  input:
  path read

  output:
  stdout

  script:
  """
  printf "${read}"
  gunzip -c ${read} | wc -l
  """

}
