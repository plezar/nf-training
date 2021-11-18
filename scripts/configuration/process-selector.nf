// process-selector.nf
nextflow.enable.dsl=2

process P1 {
  echo true

  script:
  """
  echo P1: Using $task.cpus cpus and $task.memory memory.
  """
}

process P2 {
  echo true

  script:
  """
  echo P2: Using $task.cpus cpus and $task.memory memory.
  """
}

workflow {
  P1()
  P2()
}