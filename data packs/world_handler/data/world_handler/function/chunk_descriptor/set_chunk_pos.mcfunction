#
# world_handler:chunk_descriptor/set_chunk_pos
#
# Set the chunk position
#> Scores
#  @x (in): chunk x position
#  @z (in): chunk z position
#> Storage
#  @chunk_descriptor (inout): the chunk descriptor
#> Return void

# X
execute store result storage io: chunk_descriptor.pos[0] int 1.0 run scoreboard players get ::in x

# Z
execute store result storage io: chunk_descriptor.pos[1] int 1.0 run scoreboard players get ::in z
