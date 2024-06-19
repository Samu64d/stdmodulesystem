#
# mineweather:server/player_entity/statistics/minecraft.custom/get_eat_cake_slice
#
# Get eat cake slice statistic value
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <value: eat cake slice statistic value> {}

scoreboard players operation ::out value = @s __stat_eat_cake_slice__
