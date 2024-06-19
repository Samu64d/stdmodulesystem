#
# mineweather:server/living_entity/has_ai
#
# Check if the entity has AI
# context:       <position: none, executor: the living entity>
# arguments:     <> {}
# return values: <has_ai: boolean flag> {}

execute store result score ::entity_living temp0 run data get entity @s NoAI 1.0
execute store success score ::out has_ai if score ::entity_living temp0 = ::const FALSE
