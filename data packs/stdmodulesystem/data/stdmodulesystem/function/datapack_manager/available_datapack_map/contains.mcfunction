#
# stdmodulesystem:datapack_manager/available_datapack_map/contains_by_id
#
# Check if the available datapack map contains a available datapack referencing a datapack id
#> Storage
#  @datapack_id (in): the datapack id
#> Return data
#  boolean flag

# Get on matching datapack id
data modify storage io: map_ref set value "storage stdmodulesystem:volatile datapack_manager.available_datapack_map"
data modify storage io: key set from storage io: datapack_id
return run function stdmodulesystem:utils/referenced_map/has_key
