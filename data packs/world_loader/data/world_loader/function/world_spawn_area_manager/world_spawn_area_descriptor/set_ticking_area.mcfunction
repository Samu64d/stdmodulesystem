#
# world_loader:world_spawn_area_manager/world_spawn_area_descriptor/set_ticking_area
#
# Set the ticking area of a world spawn area descriptor
#> Storage
#  @ticking_area_uuid (in): the ticking area uuid
#  @world_spawn_area_descriptor (inout): the world spawn area descriptor
#> Return void

data modify storage io: world_spawn_area_descriptor.ticking_area set from storage io: ticking_area_uuid
