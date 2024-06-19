#
# minecraft_world_api:block/api/is_ignitable
#
# Check if a block type is ignitable
#> Storage
#  @name (in): the block name
#> Return data
#  boolean flag

function minecraft_registries:providers/block/get_is_ignitable

# Return data
return run data get storage io: is_ignitable 1.0
