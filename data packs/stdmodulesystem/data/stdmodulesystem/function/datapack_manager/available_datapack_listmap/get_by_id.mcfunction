#
# stdmodulesystem:datapack_manager/available_datapack_listmap/get_by_id
#
# Get an available datapack from the available datapack listmap using it's id
#> Storage
#  @datapack_id (in): the datapack id
#  @available_datapack (out): the available datapack
#> Return data
#  boolean flag

# Get from the available datapack map
return run function stdmodulesystem:datapack_manager/available_datapack_map/get_by_id
