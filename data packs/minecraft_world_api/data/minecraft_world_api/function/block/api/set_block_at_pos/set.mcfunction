#
# minecraft_world_api:block/api/set_block_at_pos/set
#

$return run execute in $(dimension) positioned $(x) $(y) $(z) run setblock ~ ~ ~ $(name)
