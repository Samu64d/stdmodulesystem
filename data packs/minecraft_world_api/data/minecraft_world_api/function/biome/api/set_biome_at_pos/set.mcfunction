#
# minecraft_world_api:biome/api/set_biome_at_pos/set
#

$execute in $(dimension) positioned $(x) $(y) $(z) run fillbiome ~ ~ ~ ~ ~ ~ $(name)
