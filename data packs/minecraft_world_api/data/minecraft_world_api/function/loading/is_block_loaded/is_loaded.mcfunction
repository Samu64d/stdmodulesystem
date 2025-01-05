#
# minecraft_world_api:loading/is_block_loaded/is_loaded
#

$return run execute in $(dimension) positioned $(x) $(y) $(z) if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all
