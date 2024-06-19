#
# minecraft_world_api:block/blockstates/get_blockstate_property_at_pos/get_property_value
#

$execute in $(dimension) positioned $(x) $(y) $(z) run function minecraft_registries:providers/blockstates/get_$(property) with storage io:
