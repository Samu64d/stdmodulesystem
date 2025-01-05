#
# minecraft_world_api:biome/api/get_biome_name_at_pos/get
#

$execute in $(dimension) positioned $(x) $(y) $(z) run function minecraft_registries:providers/biome/get_name
