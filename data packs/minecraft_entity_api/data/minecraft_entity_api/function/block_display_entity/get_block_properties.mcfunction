#
# minecraft_entity_api:block_display_entity/get_block_properties
#
# Get the block properties of a block display entity
#> Storage
#  @block_properties (out): the block properties
#> Context
#  @executor (in): the block display entity
#> Return void

data modify storage io: block_properties set from entity @s block_state.Properties
