#
# minecraft_world_api:chunk/utils/empty
#
# Empty a chunk
#> Storage
#  @dimension (in): the dimension
#  @chunk_pos (in): the chunk position
#> Return data
#  boolean flag

# Fill the chunk with air
data modify storage io: name set value "minecraft:air"
return run function minecraft_world_api:chunk/utils/fill
