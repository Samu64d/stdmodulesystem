#
# world_handler:chunk_manager/loaded_chunk_list/get_by_chunk
#
# Get a loaded chunk descriptor matching a chunk descriptor from the loaded chunk list
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#  @loaded_chunk_descriptor (out): the loaded chunk descriptor
#> Return data
#  boolean flag

# Get on matching chunk
data modify storage io: list_ref set value "storage world_handler:data chunk_manager.loaded_chunk_list"
data modify storage io: like_element set value {}
data modify storage io: like_element.chunk set from storage io: chunk_descriptor
execute store result score ::world_handler::chunk_manager success run function collections:referenced_list/get_first_like
execute if score ::world_handler::chunk_manager success = ::const TRUE run data modify storage io: loaded_chunk_descriptor set from storage io: element

# Return data
return run scoreboard players get ::world_handler::chunk_manager success
