#
# minecraft_world_api:chunk_pos/offset_direction
#
# Move a chunk position through a direction
#> Scores
#  @direction (in): the direction
#> Storage
#  @chunk_pos (in): the chunk position
#> Return void

execute if score ::in direction = ::utils::enum_directions NORTH run function minecraft_world_api:chunk_pos/north
execute if score ::in direction = ::utils::enum_directions SOUTH run function minecraft_world_api:chunk_pos/south
execute if score ::in direction = ::utils::enum_directions EAST run function minecraft_world_api:chunk_pos/east
execute if score ::in direction = ::utils::enum_directions WEST run function minecraft_world_api:chunk_pos/west
