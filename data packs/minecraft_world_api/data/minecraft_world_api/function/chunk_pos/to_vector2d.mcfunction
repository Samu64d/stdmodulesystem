#
# minecraft_world_api:chunk_pos/to_vector2d
#
# Create a new double 2d vector from a chunk position
#> Storage
#  @chunk_pos (in): the chunk position
#  @vector (out): the vector
#> Return void

execute store result score ::in x run function minecraft_world_api:chunk_pos/get_x
execute store result score ::in y run function minecraft_world_api:chunk_pos/get_z
function nmath:vector2d/new_from_scores
