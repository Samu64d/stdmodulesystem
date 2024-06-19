#
# mineweather:server/player_entity/sleep/get_sleep_time
#
# Get the amount of time that the player has been passed sleeping
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <value: time value> {}

execute store result score ::out value run data get entity @s SleepTimer 1.0
