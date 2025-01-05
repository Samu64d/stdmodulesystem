#
# minecraft_entity_api:block_display_entity/set_block_name
#
# Set the block name of a block display entity
#> Storage
#  @block_name (in): the block name
#> Context
#  @executor (in): the block display entity
#> Return data
#  boolean flag

return run data modify entity @s block_state.Name set from storage io: block_name
