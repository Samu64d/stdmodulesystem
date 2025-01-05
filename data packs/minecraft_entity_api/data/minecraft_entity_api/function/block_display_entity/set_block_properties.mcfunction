#
# minecraft_entity_api:block_display_entity/set_block_properties
#
# Set the block properties of a block display entity
#> Storage
#  @block_properties (in): the block properties
#> Context
#  @executor (in): the block display entity
#> Return data
#  boolean flag

return run data modify entity @s block_state.Properties set from storage io: block_properties
