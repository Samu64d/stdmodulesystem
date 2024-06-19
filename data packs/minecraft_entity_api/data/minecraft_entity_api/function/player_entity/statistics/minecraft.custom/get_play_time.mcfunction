#
# mineweather:server/player_entity/statistics/minecraft.custom/get_play_time
#
# Get play time statistic value
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <value: play time statistic value> {}

scoreboard players operation ::out value = @s __stat_play_time__
