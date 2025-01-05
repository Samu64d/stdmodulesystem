#
# utils:enum_directions/rand
#
# Generate a random direction
#> Return data
#  random direction

execute store result score ::utils::enum_directions value run function random:randchar
scoreboard players operation ::utils::enum_directions value %= ::int 6
execute if score ::utils::enum_directions value matches 0 run return run scoreboard players get ::utils::enum_directions UP
execute if score ::utils::enum_directions value matches 1 run return run scoreboard players get ::utils::enum_directions DOWN
execute if score ::utils::enum_directions value matches 2 run return run scoreboard players get ::utils::enum_directions NORTH
execute if score ::utils::enum_directions value matches 3 run return run scoreboard players get ::utils::enum_directions SOUTH
execute if score ::utils::enum_directions value matches 4 run return run scoreboard players get ::utils::enum_directions WEST
execute if score ::utils::enum_directions value matches 5 run return run scoreboard players get ::utils::enum_directions EAST
