#
# minecraft_world_api:block/api/is_at_pos/check
#

$return run execute in $(dimension) positioned $(x) $(y) $(z) if block ~ ~ ~ $(name)
