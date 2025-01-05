#
# utils:enum_directions/get_axis
#
# Get the axis normal to a direction
#> Scores
#  @direction (in): the direction
#> Return data
#  axis

execute if score ::in direction = ::utils::enum_directions DOWN run return run scoreboard players get ::utils::enum_axes Y
execute if score ::in direction = ::utils::enum_directions UP run return run scoreboard players get ::utils::enum_axes Y
execute if score ::in direction = ::utils::enum_directions NORTH run return run scoreboard players get ::utils::enum_axes Z
execute if score ::in direction = ::utils::enum_directions SOUTH run return run scoreboard players get ::utils::enum_axes Z
execute if score ::in direction = ::utils::enum_directions WEST run return run scoreboard players get ::utils::enum_axes X
execute if score ::in direction = ::utils::enum_directions EAST run return run scoreboard players get ::utils::enum_axes X
