#
# mineweather:server/living_entity/health/get_level
#
# Get health level of a living entity
# context:       <position: none, executor: the living entity>
# arguments:     <> {}
# return values: <health: health level value> {}

execute store result score ::out health run data get entity @s Health 100
