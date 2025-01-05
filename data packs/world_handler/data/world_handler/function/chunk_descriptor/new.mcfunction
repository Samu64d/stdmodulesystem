#
# world_handler:chunk_descriptor/new
#
# Create a new chunk descriptor
#> Scores
#  @x (in): chunk x position
#  @z (in): chunk z position
#> Storage
#  @dimension (in): the chunk dimension
#  @chunk_descriptor (out): the chunk descriptor
#> Return void

# Create object
data modify storage io: chunk_descriptor set value {dimension: "minecraft:overworld", pos:[I; 0, 0]}

# Set dimension
data modify storage io: chunk_descriptor.dimension set from storage io: dimension

# Set chunk position

# X
execute store result storage io: chunk_descriptor.pos[0] int 1.0 run scoreboard players get ::in x

# Z
execute store result storage io: chunk_descriptor.pos[1] int 1.0 run scoreboard players get ::in z
