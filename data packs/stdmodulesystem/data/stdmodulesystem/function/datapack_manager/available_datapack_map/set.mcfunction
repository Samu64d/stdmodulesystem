#
# stdmodulesystem:datapack_manager/available_datapack_map/set
#
# Set an available datapack to the available datapack map
#> Storage
#  @available_datapack (in): the available datapack
#  @datapack_id (in): the datapack id
#> Return void

# Set the element to the available datapack map
data modify storage io: map_ref set value "storage stdmodulesystem:volatile datapack_manager.available_datapack_map"
data modify storage io: key set from storage io: datapack_id
data modify storage io: value_ref set value "storage io: available_datapack"
function stdmodulesystem:utils/referenced_map/set_key
