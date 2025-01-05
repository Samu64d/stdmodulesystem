#
# minecraft_world_api:block_pos/north
#
# Move a block position north
#> Storage
#  @block_pos (in): the block position
#> Return void

scoreboard players set ::in x 0
scoreboard players set ::in y 0
scoreboard players set ::in z -1
function minecraft_world_api:block_pos/add_coords
