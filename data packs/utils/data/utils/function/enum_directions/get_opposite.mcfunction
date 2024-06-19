#
# utils:enum_directions/get_opposite
#
# Get the opposite direction of a direction
#> Scores
#  @direction (in): the direction
#> Return data
#  opposite direction

execute if score ::in direction = ::utils::enum_directions DOWN run return run scoreboard players get ::utils::enum_directions UP
execute if score ::in direction = ::utils::enum_directions UP run return run scoreboard players get ::utils::enum_directions DOWN
execute if score ::in direction = ::utils::enum_directions NORTH run return run scoreboard players get ::utils::enum_directions SOUTH
execute if score ::in direction = ::utils::enum_directions SOUTH run return run scoreboard players get ::utils::enum_directions NORTH
execute if score ::in direction = ::utils::enum_directions WEST run return run scoreboard players get ::utils::enum_directions EAST
execute if score ::in direction = ::utils::enum_directions EAST run return run scoreboard players get ::utils::enum_directions WEST
