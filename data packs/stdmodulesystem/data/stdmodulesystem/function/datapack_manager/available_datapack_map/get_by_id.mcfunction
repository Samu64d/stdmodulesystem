#
# stdmodulesystem:datapack_manager/available_datapack_map/get_by_id
#
# Get an available datapack from the available datapack map referencing a datapack id
#> Storage
#  @datapack_id (in): the datapack id
#  @available_datapack (out): the available datapack
#> Return data
#  boolean flag

# Get the element from the available datapack map
data modify storage io: map_ref set value "storage stdmodulesystem:volatile datapack_manager.available_datapack_map"
data modify storage io: key set from storage io: datapack_id
execute store result score ::stdmodulesystem::datapack_manager success run function stdmodulesystem:utils/referenced_map/get_key
execute if score ::stdmodulesystem::datapack_manager success = ::const TRUE run data modify storage io: available_datapack set from storage io: value

# Return data
return run scoreboard players get ::stdmodulesystem::datapack_manager success