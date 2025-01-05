#
# world_handler:ticking_areas_manager/ticking_area_descriptor/calc_overlapped
#
# Calculate if two ticking areas matching two ticking area descriptor are overlapped
#> Scores
#  @check_uuid (in): check for the same area
#> Storage
#  @ticking_area_descriptor0 (in): the first ticking area descriptor
#  @ticking_area_descriptor1 (out): the second ticking area descriptor
#> Return data
#  boolean flag

scoreboard players operation ::world_handler::ticking_areas_manager are_overlapped = ::const FALSE

# Get first ticking area uuid
data modify storage io: ticking_area_descriptor set from storage io: ticking_area_descriptor0
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_uuid
data modify storage world_handler:volatile ticking_areas_manager.temp_uuid set from storage io: uuid

# Get second ticking uuid
data modify storage io: ticking_area_descriptor set from storage io: ticking_area_descriptor1
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_uuid

# Check matching
execute store success score ::world_handler::ticking_areas_manager success run data modify storage world_handler:volatile ticking_areas_manager.temp_uuid set from storage io: uuid
execute store result score ::world_handler::ticking_areas_manager success if score ::world_handler::ticking_areas_manager success = ::const FALSE

# On check success
execute if score ::world_handler::ticking_areas_manager success = ::const FALSE if score ::in check_uuid = ::const TRUE run function world_handler:ticking_areas_manager/ticking_area_descriptor/calc_overlapped/on_uuid_match_success
execute if score ::world_handler::ticking_areas_manager success = ::const TRUE if score ::in check_uuid = ::const FALSE run function world_handler:ticking_areas_manager/ticking_area_descriptor/calc_overlapped/on_uuid_match_success

# Return data
return run scoreboard players get ::world_handler::ticking_areas_manager are_overlapped
