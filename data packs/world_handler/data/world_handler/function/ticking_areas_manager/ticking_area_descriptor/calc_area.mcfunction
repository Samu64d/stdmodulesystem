#
# world_handler:ticking_areas_manager/ticking_area_descriptor/calc_area
#
# Calculate the chunk area of a ticking area descriptor
#> Storage
#  @ticking_area_descriptor (in): the ticking area descriptor
#> Return data
#  area value

# Get ticking area size
execute store result score ::world_handler::ticking_areas_manager area run function world_handler:ticking_areas_manager/ticking_area_descriptor/get_size

# Calculate area
scoreboard players operation ::world_handler::ticking_areas_manager area *= ::int 2
scoreboard players add ::world_handler::ticking_areas_manager area 1
scoreboard players operation ::world_handler::ticking_areas_manager area *= ::world_handler::ticking_areas_manager area

# Return data
return run scoreboard players get ::world_handler::ticking_areas_manager area
