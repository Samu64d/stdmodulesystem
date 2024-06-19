#
# minecraft_world_api:block_pos/new_from_array
#
# Create a new block position from an array
#> Storage
#  @array (in): the block position
#> Return void

execute store result score ::in x run data get storage io: array[0] 1.0
execute store result score ::in y run data get storage io: array[1] 1.0
execute store result score ::in z run data get storage io: array[2] 1.0
function minecraft_world_api:block_pos/new
