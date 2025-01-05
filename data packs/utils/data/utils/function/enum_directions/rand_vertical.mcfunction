#
# utils:enum_directions/rand_vertical
#
# Generate a random direction that is parallel to the vertical plane
#> Return data
#  random vertical direction

execute store result score ::utils::enum_directions value run function random:randchar
scoreboard players operation ::utils::enum_directions value %= ::int 2
execute if score ::utils::enum_directions value matches 0 run return run scoreboard players get ::utils::enum_directions UP
execute if score ::utils::enum_directions value matches 1 run return run scoreboard players get ::utils::enum_directions DOWN
