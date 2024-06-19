#
# world_handler:world_spawn_manager/api/get_default_pos
#
# Get the default world spawn position
#> Storage
#  @position (out): the position
#> Return void

data modify storage io: position set from storage world_handler:static world_spawn_manager.DEFAULT_WORLD_SPAWN_POSITION
