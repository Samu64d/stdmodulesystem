#
# minecraft_world_api:block_pos/to_vector3d
#
# Create a new double 3d vector from a block position
#> Storage
#  @block_pos (in): the block position
#  @vector (out): the vector
#> Return void

execute store result score ::in x run function minecraft_world_api:block_pos/get_x
execute store result score ::in y run function minecraft_world_api:block_pos/get_y
execute store result score ::in z run function minecraft_world_api:block_pos/get_z
function nmath:vector3d/new_from_scores
