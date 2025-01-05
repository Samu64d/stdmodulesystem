#
# world_handler:ticking_areas_manager/main/main
#

# Unload previous session active ticking areas
execute if function stdmodulesystem:api/is_first_tick run function world_handler:ticking_areas_manager/main/remove_all_previous_session_ticking_areas

# Set the number of active ticking areas
execute store result score ::world_handler::ticking_areas_manager ticking_area_count run function world_handler:ticking_areas_manager/ticking_area_list/get_count
