#
# stdmodulesystem:datapack_manager/available_datapack_map/clear
#
# Empty the available datapack map
#> Return void

# Empty the available datapack map
data modify storage io: map_ref set value "storage stdmodulesystem:volatile datapack_manager.available_datapack_map"
function stdmodulesystem:utils/referenced_map/clear
