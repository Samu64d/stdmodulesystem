#
# world_handler:world_spawn_manager/api/get_default_dimension
#
# Get the default world spawn dimension
#> Storage
#  @dimension (out): the dimension
#> Return void

data modify storage io: dimension set from storage world_handler:static world_spawn_manager.DEFAULT_WORLD_SPAWN_DIMENSION
