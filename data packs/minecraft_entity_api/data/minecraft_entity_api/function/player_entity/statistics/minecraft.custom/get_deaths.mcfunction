#
# mineweather:server/player_entity/statistics/minecraft.custom/get_deaths
#
# Get deaths statistic value
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <value: deaths statistic value> {}

scoreboard players operation ::out value = @s __stat_deaths__
