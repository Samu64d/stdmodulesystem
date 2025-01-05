#
# mineweather:server/player_entity/statistics/minecraft.custom/get_leave_game
#
# Get leave game statistic value
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <value: leave game statistic value> {}

scoreboard players operation ::out value = @s __stat_leave_game__
