#
# world_handler:chunk_manager/loaded_chunk_list/pick_random
#
# Pick a random loaded chunk descriptor from the loaded chunk list
#> Storage
#  @loaded_chunk_descriptor (out): the loaded chunk descriptor
#> Return void

data modify storage io: list_ref set value "storage world_handler:data chunk_manager.loaded_chunk_list"
function collections:referenced_list/pick_random
data modify storage io: loaded_chunk_descriptor set from storage io: element
