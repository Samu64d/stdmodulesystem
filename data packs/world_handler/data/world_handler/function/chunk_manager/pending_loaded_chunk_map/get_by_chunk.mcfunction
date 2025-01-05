#
# world_handler:chunk_manager/pending_loaded_chunk_map/get_by_chunk
#
# Get a loaded chunk descriptor from the pending loaded chunk map referencing a chunk descriptor
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#  @loaded_chunk_descriptor (out): the loaded chunk descriptor
#> Return data
#  boolean flag

# Get the element from the pending loaded chunk map
data modify storage io: iterable_map_ref set value "storage world_handler:data chunk_manager.pending_loaded_chunk_map"
data modify storage io: key set from storage io: chunk_descriptor
execute store result score ::world_handler::chunk_manager success run function collections:referenced_iterable_map/get_key
execute if score ::world_handler::chunk_manager success = ::const TRUE run data modify storage io: loaded_chunk_descriptor set from storage io: value

# Return data
return run scoreboard players get ::world_handler::chunk_manager success
