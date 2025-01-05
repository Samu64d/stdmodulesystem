#
# stdmodulesystem:datapack_manager/available_datapack/get_datapack_id
#
# Get the id of an available datapack
#> Storage
#  @available_datapack (in): the available datapack
#  @datapack_id (out): the datapack id
#> Return void

data modify storage io: datapack_id set from storage io: available_datapack.id
