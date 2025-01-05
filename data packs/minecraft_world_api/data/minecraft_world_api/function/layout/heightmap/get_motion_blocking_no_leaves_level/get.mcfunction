#
# minecraft_world_api:layout/heightmap/get_motion_blocking_no_leaves_level/get
#

$execute in $(dimension) positioned $(x) $(y) $(z) positioned over motion_blocking_no_leaves positioned ~ ~-1 ~ run function context:get_block_pos
