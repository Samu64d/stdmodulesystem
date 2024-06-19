#
# minecraft_world_api:block/blockstates/set_blockstate_property_at_pos_as_integer
#
# Set a blockstate property as an integer of a block at a world position
#> Scores
#  @property_value (in): the block blockstate property value
#> Storage
#  @dimension (in): the dimension
#  @block_pos (in): the block position
#  @property (in): the block blockstate property name
#> Return data
#  boolean flag

# Stringify
execute store result storage io: number int 1.0 run scoreboard players get ::in property_value
function number:stringify

# Set blockstate property value
data modify storage io: property_value set from storage io: string
function minecraft_world_api:block/blockstates/set_blockstate_property_at_pos
