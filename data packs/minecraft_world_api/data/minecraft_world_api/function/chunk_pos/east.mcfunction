#
# minecraft_world_api:chunk_pos/east
#
# Move a chunk position east
#> Storage
#  @chunk_pos (in): the chunk position
#> Return void

scoreboard players set ::in x 1
scoreboard players set ::in z 0
function minecraft_world_api:chunk_pos/add_coords
