#
# mineweather:server/player_entity/sleep/is_sleeping
#
# Check if the player is sleeping
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <is_sleeping: boolean flag> {}

execute store success score ::out is_sleeping run data get entity @s SleepingX 1.0
