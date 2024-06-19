#
# mineweather:server/player_entity/is_handled
#
# Check if the player is handled
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <is_handled: boolean flag> {}

scoreboard players operation ::out is_handled = @s __is_handled__
