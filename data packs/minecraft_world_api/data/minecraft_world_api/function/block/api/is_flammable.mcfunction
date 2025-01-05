#
# minecraft_world_api:block/api/is_flammable
#
# Check if a block type is flammable
#> Storage
#  @name (in): the block name
#> Return data
#  boolean flag

function minecraft_registries:providers/block/get_is_flammable

# Return data
return run data get storage io: is_flammable 1.0
