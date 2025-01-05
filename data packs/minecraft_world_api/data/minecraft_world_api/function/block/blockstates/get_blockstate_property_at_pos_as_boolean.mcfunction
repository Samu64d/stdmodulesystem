#
# minecraft_world_api:block/blockstates/get_blockstate_property_at_pos_as_boolean
#
# Get a blockstate property as a boolean of a block at a world position.
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#  @property (in): the block blockstate property name
#> Return data
#  boolean flag

# Get property
execute unless function minecraft_world_api:block/blockstates/get_blockstate_property_at_pos run scoreboard players get ::const FALSE

# Return data
return run data modify storage io: property_value set value "false"
