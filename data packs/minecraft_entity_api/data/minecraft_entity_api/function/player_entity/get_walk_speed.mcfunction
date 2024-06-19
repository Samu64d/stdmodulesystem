#
# mineweather:server/player_entity/get_walk_speed
#
# Get the walk speed vector
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <x: x component, y: y component, z: z component> {}

# Use internal cached values
scoreboard players operation ::out x = @s __walk_speed_x__
scoreboard players operation ::out y = @s __walk_speed_y__
scoreboard players operation ::out z = @s __walk_speed_z__
