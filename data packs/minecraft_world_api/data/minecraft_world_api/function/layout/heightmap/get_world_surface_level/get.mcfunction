#
# minecraft_world_api:layout/heightmap/get_world_surface_level/get
#

$execute in $(dimension) positioned $(x) $(y) $(z) positioned over world_surface positioned ~ ~-1 ~ run function context:get_block_pos
