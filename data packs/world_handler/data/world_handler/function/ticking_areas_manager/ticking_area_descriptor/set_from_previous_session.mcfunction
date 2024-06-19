#
# world_handler:ticking_areas_manager/ticking_area_descriptor/set_from_previous_session
#
# Set if a ticking area descriptor is from a previous session
#> Scores
#  @from_previous_session (in): boolean flag
#> Storage
#  @ticking_area_descriptor (inout): the ticking area descriptor
#> Return void

execute store result storage io: ticking_area_descriptor.from_previous_session byte 1.0 run scoreboard players get ::in from_previous_session
