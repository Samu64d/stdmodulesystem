#
# context:get_block_position
#
# Get the context block position
#> Storage
#  @position (out): the context block position
#> Context
#  @position (in): the block position
#> Return void

# Get position
function context:get_position

# Cast to block position
execute store result score ::context x run data get storage io: position[0]
execute store result score ::context y run data get storage io: position[1]
execute store result score ::context z run data get storage io: position[2]
data modify storage io: position set value [I; 0, 0, 0]
execute store result storage io: position[0] int 1.0 run scoreboard players get ::context x
execute store result storage io: position[1] int 1.0 run scoreboard players get ::context y
execute store result storage io: position[2] int 1.0 run scoreboard players get ::context z
