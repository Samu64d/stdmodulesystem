#
# minecraft_world_api:chunk_pos/to_vector2f
#
# Create a new float 2d vector from a chunk position
#> Storage
#  @chunk_pos (in): the chunk position
#  @vector (out): the vector
#> Return void

execute store result score ::in x run function minecraft_world_api:chunk_pos/get_x
execute store result score ::in y run function minecraft_world_api:chunk_pos/get_z
function nmath:vector2f/new_from_scores
