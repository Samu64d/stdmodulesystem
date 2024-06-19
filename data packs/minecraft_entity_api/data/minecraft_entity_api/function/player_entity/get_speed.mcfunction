#
# mineweather:server/player_entity/get_speed
#
# Get the total speed vector
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <x: x component, y: y component, z: z component> {}

# Use internal cached values
scoreboard players operation ::out x = @s __speed_x__
scoreboard players operation ::out y = @s __speed_y__
scoreboard players operation ::out z = @s __speed_z__
