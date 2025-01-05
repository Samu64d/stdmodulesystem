#
# world_handler:chunk_manager/loaded_chunk_list/update_by_chunk
#
# Update a loaded chunk descriptor matching a chunk descriptor from the loaded chunk list
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#> Return void

# Update on matching chunk
data modify storage io: list_ref set value "storage world_handler:data chunk_manager.loaded_chunk_list"
data modify storage io: like_element set value {}
data modify storage io: like_element.chunk set from storage io: chunk_descriptor
data modify storage io: element_ref set value "storage io: loaded_chunk_descriptor"
return run function collections:referenced_list/update_like
