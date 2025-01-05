#
# minecraft_world_api:block/api/is_solid
#
# Check if a block type is solid
#> Storage
#  @name (in): the block name
#> Return data
#  boolean flag

function minecraft_registries:providers/block/get_is_solid

# Return data
return run data get storage io: is_solid 1.0
