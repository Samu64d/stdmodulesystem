#
# minecraft_world_api:block/blockstates/get_blockstate_property_at_pos_as_integer
#
# Get a blockstate property as an integer of a block at a world position.
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#  @property (in): the block blockstate property name
#> Return data
#  integer flag

# Get property
execute unless function minecraft_world_api:block/blockstates/get_blockstate_property_at_pos run return 0

# Parse integer
data modify storage io: string set from storage io: property_value
function number:parse_int

# Return data
return run data get storage io: number 1.0
