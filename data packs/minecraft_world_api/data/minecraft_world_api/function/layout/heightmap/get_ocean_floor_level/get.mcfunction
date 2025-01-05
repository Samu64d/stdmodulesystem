#
# minecraft_world_api:layout/heightmap/get_ocean_floor_level/get
#

$execute in $(dimension) positioned $(x) $(y) $(z) positioned over ocean_floor positioned ~ ~-1 ~ run function context:get_block_pos
