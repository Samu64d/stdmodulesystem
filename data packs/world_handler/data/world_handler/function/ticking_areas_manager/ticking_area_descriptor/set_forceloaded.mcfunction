#
# world_handler:ticking_areas_manager/ticking_area_descriptor/set_forceloaded
#
# Set if a ticking area descriptor is forceloaded
#> Scores
#  @forceloaded (in): boolean flag
#> Storage
#  @ticking_area_descriptor (inout): the ticking area descriptor
#> Return void

execute store result storage io: ticking_area_descriptor.forceloaded byte 1.0 run scoreboard players get ::in forceloaded
