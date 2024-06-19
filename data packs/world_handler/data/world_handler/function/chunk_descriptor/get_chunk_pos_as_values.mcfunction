#
# world_handler:chunk_descriptor/get_chunk_pos_as_values
#
# Get the chunk position as values
#> Scores
#  @x (out): chunk x position
#  @z (out): chunk z position
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#> Return void

# X
execute store result score ::out x run data get storage io: chunk_descriptor.pos[0] 1.0

# Z
execute store result score ::out z run data get storage io: chunk_descriptor.pos[1] 1.0
