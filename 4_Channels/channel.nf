ch_vl = Channel.of('GRCh38')
ch_qu = Channel.of(1..4)

//ch_vl.view()
//ch_qu.view()

ids = ['ERR908507', 'ERR908506', 'ERR908505']

ids_queue = Channel.fromList(ids)
ids_value = Channel.value(ids)

ids_queue.view()
ids_value.view()
