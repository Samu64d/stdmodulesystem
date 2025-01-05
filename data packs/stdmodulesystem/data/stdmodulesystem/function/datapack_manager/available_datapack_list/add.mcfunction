#
# stdmodulesystem:datapack_manager/available_datapack_list/add
#
# Add an available datapack to the available datapack list
#> Storage
#  @available_datapack (in): the available datapack
#> Return void

# Add the element to the available datapack list
data modify storage io: list_ref set value "storage stdmodulesystem:volatile datapack_manager.available_datapack_list"
function stdmodulesystem:datapack_manager/available_datapack/get_datapack_id
data modify storage io: element_ref set value "storage io: datapack_id"
function stdmodulesystem:utils/referenced_list/add_first
