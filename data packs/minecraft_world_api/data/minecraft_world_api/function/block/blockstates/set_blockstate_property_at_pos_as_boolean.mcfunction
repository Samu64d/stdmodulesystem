#
# minecraft_world_api:block/blockstates/set_blockstate_property_at_pos_as_boolean
#
# Set a blockstate property as a boolean of a block at a world position
#> Scores
#  @property_value (in): the block blockstate property value
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#  @property (in): the block blockstate property name
#> Return data
#  boolean flag

# Stringify
data modify storage io: property_value set value "false"
execute if score ::in property_value = ::const TRUE run data modify storage io: property_value set value "true"

# Set blockstate property value
return run function minecraft_world_api:block/blockstates/set_blockstate_property_at_pos
