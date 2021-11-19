// module_parameters_not_adopted.nf
nextflow.enable.dsl=2

include {sayMessage} from './modules/module.nf'

params.message = 'parameter from workflow script'

workflow {
    sayMessage()
    println(params.message)
}
