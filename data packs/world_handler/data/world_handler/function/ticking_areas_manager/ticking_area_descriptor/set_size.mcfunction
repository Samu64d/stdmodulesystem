#
# world_handler:ticking_areas_manager/ticking_area_descriptor/set_size
#
# Set the size of a ticking area descriptor
#> Scores
#  @size (in): the size
#> Storage
#  @ticking_area_descriptor (inout): the ticking area descriptor
#> Return void

execute if score ::in size <= ::world_handler::ticking_areas_manager::const MAX_TICKING_AREA_SIZE store result storage io: ticking_area_descriptor.size int 1.0 run scoreboard players get ::in size
execute if score ::in size > ::world_handler::ticking_areas_manager::const MAX_TICKING_AREA_SIZE store result storage io: ticking_area_descriptor.size int 1.0 run scoreboard players get ::world_handler::ticking_areas_manager::const MAX_TICKING_AREA_SIZE

# Update internal values
function world_handler:ticking_areas_manager/ticking_area_descriptor/internal/on_center_or_size_change
