#
# world_loader:world_spawn_area_manager/world_spawn_area_descriptor/new
#
# Create a new world spawn area descriptor
#> Scores
#  @active (in): boolean flag
#> Storage
#  @ticking_area_uuid (in): the ticking area uuid
#  @world_spawn_area_descriptor (out): the world spawn area descriptor
#> Return void

# Create object
data modify storage io: world_spawn_area_descriptor set value {ticking_area: [I; 0, 0, 0, 0], active: false}

# Set ticking area
function world_loader:world_spawn_area_manager/world_spawn_area_descriptor/set_ticking_area

# Set active
function world_loader:world_spawn_area_manager/world_spawn_area_descriptor/set_active
