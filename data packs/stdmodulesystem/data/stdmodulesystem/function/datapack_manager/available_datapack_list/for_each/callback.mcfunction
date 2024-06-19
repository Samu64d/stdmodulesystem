#
# stdmodulesystem:datapack_manager/available_datapack_list/for_each/callback
#

# Call callback function
data modify storage io: datapack_id set from storage io: element
data modify storage io: callback set from storage stdmodulesystem:volatile datapack_manager.temp_callback
function stdmodulesystem:datapack_manager/available_datapack_list/for_each/callback2 with storage io:
