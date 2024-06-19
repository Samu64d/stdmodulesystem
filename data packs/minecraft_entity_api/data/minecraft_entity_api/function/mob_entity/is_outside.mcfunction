#
# mineweather:server/living_entity/is_outside
#
# Check if the entity is outside
# context:       <position: none, executor: the living entity>
# arguments:     <> {}
# return values: <is_outside: boolean flag> {}

execute at @s run function mineweather:server/world/layout/context/is_on_surface
