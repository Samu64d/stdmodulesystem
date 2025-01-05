#
# mineweather:server/player_entity/status_effects/give_nausea
#
# Give nausea status effect to a player for one second
# context:       <position: none, executor: the player>
# arguments:     <amplifier: effect amplifier value> {}
# return values: <> {}

execute if score ::in amplifier matches 0 run effect give @s minecraft:nausea 1 0 true
