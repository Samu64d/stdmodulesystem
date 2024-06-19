#
# mineweather:server/living_entity/death/is_died
#
# Check if a living entity is died
# context:       <position: none, executor: the living entity>
# arguments:     <> {}
# return values: <is_died: boolean flag> {}

# Get health value
function mineweather:server/living_entity/health/get_level

# Check level
execute store success score ::out is_died if score ::out health matches ..0
