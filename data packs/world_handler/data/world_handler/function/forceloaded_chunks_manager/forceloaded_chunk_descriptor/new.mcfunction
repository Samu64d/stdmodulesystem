#
# world_handler:forceloaded_chunks_manager/forceloaded_chunk_descriptor/new
#
# Create a new forceloaded chunk descriptor from a chunk descriptor
#> Scores
#  @tick (in): the number of ticks for which the chunk will be forceloaded
#  @persistent (in): forceload the chunk through server reloads
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#  @forceloaded_chunk_descriptor (out): the forceloaded chunk descriptor
#> Return void

# Create object
data modify storage io: forceloaded_chunk_descriptor set value {chunk: {}, expire: -1, persistent: false}

# Set chunk
data modify storage io: forceloaded_chunk_descriptor.chunk set from storage io: chunk_descriptor

# Set expire time
execute if score ::in tick matches ..-1 run function world_handler:forceloaded_chunks_manager/forceloaded_chunk_descriptor/new/set_expire_never
execute if score ::in tick matches 0.. run function world_handler:forceloaded_chunks_manager/forceloaded_chunk_descriptor/new/set_expire_time

# Set persistent
execute store result storage io: forceloaded_chunk_descriptor.persistent byte 1.0 run scoreboard players get ::in persistent
