#
# minecraft_world_api:chunk_pos/new_from_array
#
# Create a new chunk position from an array
#> Storage
#  @array (in): the chunk position
#> Return void

execute store result score ::in x run data get storage io: array[0] 1.0
execute store result score ::in z run data get storage io: array[1] 1.0
function minecraft_world_api:chunk_pos/new
