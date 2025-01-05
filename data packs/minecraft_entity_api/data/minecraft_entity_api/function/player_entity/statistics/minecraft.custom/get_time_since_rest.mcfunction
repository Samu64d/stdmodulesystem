#
# mineweather:server/player_entity/statistics/minecraft.custom/get_time_since_rest
#
# Get time since rest statistic value
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <value: time since rest statistic value> {}

scoreboard players operation ::out value = @s __stat_time_since_rest__
