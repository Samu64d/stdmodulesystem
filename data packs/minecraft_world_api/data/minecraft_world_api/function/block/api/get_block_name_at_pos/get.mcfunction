#
# minecraft_world_api:block/api/get_block_name_at_pos/get
#

$execute in $(dimension) positioned $(x) $(y) $(z) run function minecraft_registries:providers/block/get_name
