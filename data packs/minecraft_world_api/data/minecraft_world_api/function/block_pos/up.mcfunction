#
# minecraft_world_api:block_pos/up
#
# Move a block position up
#> Storage
#  @block_pos (in): the block position
#> Return void

scoreboard players set ::in x 0
scoreboard players set ::in y 1
scoreboard players set ::in z 0
function minecraft_world_api:block_pos/add_coords
