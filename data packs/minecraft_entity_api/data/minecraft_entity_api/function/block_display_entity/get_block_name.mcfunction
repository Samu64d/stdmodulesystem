#
# minecraft_entity_api:block_display_entity/get_block_name
#
# Get the block name of a block display entity
#> Storage
#  @block_name (out): the block name
#> Context
#  @executor (in): the block display entity
#> Return void

data modify storage io: block_name set from entity @s block_state.Name
