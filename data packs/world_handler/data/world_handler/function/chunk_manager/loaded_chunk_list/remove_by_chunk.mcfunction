#
# world_handler:chunk_manager/loaded_chunk_list/remove_by_chunk
#
# Remove a loaded chunk descriptor matching a chunk descriptor from the loaded chunk list
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#> Return void

# Remove on matching chunk
data modify storage io: list_ref set value "storage world_handler:data chunk_manager.loaded_chunk_list"
data modify storage io: like_element set value {}
data modify storage io: like_element.chunk set from storage io: chunk_descriptor
function collections:referenced_list/remove_like
