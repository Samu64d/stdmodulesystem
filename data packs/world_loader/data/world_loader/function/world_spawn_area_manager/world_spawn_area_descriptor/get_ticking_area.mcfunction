#
# world_loader:world_spawn_area_manager/world_spawn_area_descriptor/get_ticking_area
#
# Get the ticking area uuid of a world spawn area descriptor
#> Storage
#  @world_spawn_area_descriptor (in): the world spawn area descriptor
#  @ticking_area_uuid (out): the ticking area uuid
#> Return void

data modify storage io: ticking_area_uuid set from storage io: world_spawn_area_descriptor.ticking_area
