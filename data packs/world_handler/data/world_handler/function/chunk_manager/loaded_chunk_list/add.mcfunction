#
# world_handler:chunk_manager/loaded_chunk_list/add
#
# Add a loaded chunk descriptor to the loaded chunk list
#> Storage
#  @loaded_chunk_descriptor (in): the loaded chunk descriptor
#> Return void

data modify storage io: list_ref set value "storage world_handler:data chunk_manager.loaded_chunk_list"
data modify storage io: element_ref set value "storage io: loaded_chunk_descriptor"
function collections:referenced_list/add_last
