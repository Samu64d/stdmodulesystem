#
# minecraft_world_api:block_pos/east
#
# Move a block position east
#> Storage
#  @block_pos (in): the block position
#> Return void

scoreboard players set ::in x 1
scoreboard players set ::in y 0
scoreboard players set ::in z 0
function minecraft_world_api:block_pos/add_coords
