#
# mineweather:server/player_entity/get_fly_speed
#
# Get the fly speed vector
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <x: x component, y: y component, z: z component> {}

# Use internal cached values
scoreboard players operation ::out x = @s __fly_speed_x__
scoreboard players operation ::out y = @s __fly_speed_y__
scoreboard players operation ::out z = @s __fly_speed_z__
