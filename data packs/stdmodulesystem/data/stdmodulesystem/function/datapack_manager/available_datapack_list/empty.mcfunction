#
# stdmodulesystem:datapack_manager/available_datapack_list/empty
#
# Empty the available datapack list
#> Return void

data modify storage io: list_ref set value "storage stdmodulesystem:volatile datapack_manager.available_datapack_list"
function stdmodulesystem:utils/referenced_list/empty
