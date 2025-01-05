#
# world_handler:ticking_areas_manager/main/reset
#

# Remove all ticking areas
function world_handler:ticking_areas_manager/main/remove_all_ticking_areas

# Wipe data
function world_handler:ticking_areas_manager/cache/wipe_data

# Reset counter
scoreboard players set ::world_handler::ticking_areas_manager ticking_area_count 0
