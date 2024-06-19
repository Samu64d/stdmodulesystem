#
# mineweather:server/player_entity/statistics/minecraft.custom/get_time_since_death
#
# Get time since death statistic value
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <value: time since death statistic value> {}

scoreboard players operation ::out value = @s __stat_time_since_death__
