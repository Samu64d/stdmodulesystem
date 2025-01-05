#
# world_handler:chunk_manager/loaded_chunk_list/for_each_reverse
#
# Iterate from the head through the loaded chunk list
#> Storage
#  @callback (in): the callback function
#> Return void

data modify storage world_handler:volatile chunk_manager.temp_callback set from storage io: callback

# Iterate through the loaded chunk list
data modify storage io: list_ref set value "storage world_handler:data chunk_manager.loaded_chunk_list"
data modify storage io: callback set value "world_handler:chunk_manager/loaded_chunk_list/for_each_reverse/callback"
function collections:referenced_list/for_each_reverse
