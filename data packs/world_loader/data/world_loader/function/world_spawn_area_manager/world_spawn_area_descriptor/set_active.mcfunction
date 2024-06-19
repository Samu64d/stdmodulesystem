#
# world_loader:world_spawn_area_manager/world_spawn_area_descriptor/set_active
#
# Set if a world spawn area matching a world spawn area descriptor is active
#> Scores
#  @active (in): boolean flag
#> Storage
#  @world_spawn_area_descriptor (inout): the world spawn area descriptor
#> Return void

execute store result storage io: world_spawn_area_descriptor.active byte 1.0 run scoreboard players get ::in active
