#
# world_handler:ticking_areas_manager/overlapping/calc_overlapped_ticking_areas/callback
#

# Check if the two areas are overlapped
data modify storage io: ticking_area_descriptor0 set from storage io: ticking_area_descriptor
data modify storage io: ticking_area_descriptor1 set from storage world_handler:volatile ticking_areas_manager.temp_ticking_area_descriptor
scoreboard players operation ::in check_uuid = ::const TRUE
execute if function world_handler:ticking_areas_manager/ticking_area_descriptor/calc_overlapped run function world_handler:ticking_areas_manager/overlapping/calc_overlapped_ticking_areas/on_check_overlapping_success
