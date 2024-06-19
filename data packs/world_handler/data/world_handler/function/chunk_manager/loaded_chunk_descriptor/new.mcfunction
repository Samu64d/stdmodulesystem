#
# world_handler:chunk_manager/loaded_chunk_descriptor/new
#
# Create a new loaded chunk descriptor from a chunk descriptor
#> Scores
#  @status (in): the status
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#  @loaded_chunk_descriptor (out): the loaded chunk descriptor
#> Return void

# Create object
data modify storage io: loaded_chunk_descriptor set value {status: -1, chunk: {}}

# Set status
execute store result storage io: loaded_chunk_descriptor.status int 1.0 run scoreboard players get ::in status

# Set chunk
data modify storage io: loaded_chunk_descriptor.chunk set from storage io: chunk_descriptor
