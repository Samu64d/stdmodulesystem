#
# mineweather:server/living_entity/get_age
#
# Get the entity age value expressed in ticks
# context:       <position: none, executor: the living entity>
# arguments:     <> {}
# return values: <age: age value> {}

execute store result score ::out age run data get entity @s Age 1.0
