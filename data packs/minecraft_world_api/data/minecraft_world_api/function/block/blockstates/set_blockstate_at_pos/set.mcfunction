#
# minecraft_world_api:block/blockstates/set_blockstate_at_pos/set
#

$return run execute in $(dimension) positioned $(x) $(y) $(z) run setblock ~ ~ ~ $(name)[$(blockstate_string)]
