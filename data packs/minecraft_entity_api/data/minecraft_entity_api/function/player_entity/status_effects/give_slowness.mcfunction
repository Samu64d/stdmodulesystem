#
# mineweather:server/player_entity/status_effects/give_slowness
#
# Give slowness status effect to a player for one second
# context:       <position: none, executor: the player>
# arguments:     <amplifier: effect amplifier value> {}
# return values: <> {}

execute if score ::in amplifier matches 0 run effect give @s minecraft:slowness 1 0 true
execute if score ::in amplifier matches 1 run effect give @s minecraft:slowness 1 1 true
execute if score ::in amplifier matches 2 run effect give @s minecraft:slowness 1 2 true
execute if score ::in amplifier matches 3 run effect give @s minecraft:slowness 1 3 true
