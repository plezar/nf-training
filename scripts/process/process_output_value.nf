//process_output_value.nf
nextflow.enable.dsl=2

process METHOD {
  input:
  val x

  output:
  val x

  script:
  """
  echo $x > method.txt
  """
}
// Both 'Channel' and 'channel' keywords work to generate channels.
// However, it is a good practice to be consistent through the whole pipeline development
methods_ch = channel.of('salmon', 'kallisto')

workflow {
  METHOD(methods_ch)
  // use the view operator to display contents of the channel
  METHOD.out.view({ "Received: $it" })
}