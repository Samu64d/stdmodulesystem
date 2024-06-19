#
# minecraft_world_api:block_pos/offset_direction
#
# Move a block position through a direction
#> Scores
#  @direction (in): the direction
#> Storage
#  @block_pos (in): the block position
#> Return void

execute if score ::in direction = ::utils::enum_directions DOWN run function minecraft_world_api:block_pos/down
execute if score ::in direction = ::utils::enum_directions UP run function minecraft_world_api:block_pos/up
execute if score ::in direction = ::utils::enum_directions NORTH run function minecraft_world_api:block_pos/north
execute if score ::in direction = ::utils::enum_directions SOUTH run function minecraft_world_api:block_pos/south
execute if score ::in direction = ::utils::enum_directions EAST run function minecraft_world_api:block_pos/east
execute if score ::in direction = ::utils::enum_directions WEST run function minecraft_world_api:block_pos/west
