#
# stdmodulesystem:datapack_manager/available_datapack_list/for_each
#
# Iterate throuth the available datapack list
#> Storage
#  @callback (in): the callback function
#> Return void

data modify storage stdmodulesystem:volatile datapack_manager.temp_callback set from storage io: callback

# Iterate through the list
data modify storage io: list_ref set value "storage stdmodulesystem:volatile datapack_manager.available_datapack_list"
data modify storage io: callback set value "stdmodulesystem:datapack_manager/available_datapack_list/for_each/callback"
function stdmodulesystem:utils/referenced_list/for_each
