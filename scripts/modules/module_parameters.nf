// module_parameters.nf
nextflow.enable.dsl=2

include {sayMessage} from './modules/module.nf'

workflow {
    sayMessage()
}
