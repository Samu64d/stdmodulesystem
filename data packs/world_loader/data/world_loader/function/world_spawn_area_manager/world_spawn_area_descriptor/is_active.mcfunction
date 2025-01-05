#
# world_loader:world_spawn_area_manager/world_spawn_area_descriptor/is_active
#
# Check if a spawn area matching a spawn area descriptor is active
#> Storage
#  @world_spawn_area_descriptor (in): the world spawn area descriptor
#> Return data
#  boolean flag

return run data get storage io: world_spawn_area_descriptor.active 1.0
