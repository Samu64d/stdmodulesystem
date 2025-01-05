#
# minecraft_world_api:chunk_pos/north
#
# Move a chunk position north
#> Storage
#  @chunk_pos (in): the chunk position
#> Return void

scoreboard players set ::in x 0
scoreboard players set ::in z -1
function minecraft_world_api:chunk_pos/add_coords
