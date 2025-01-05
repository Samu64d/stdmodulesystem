#
# obj:objs/obj.controlled_block_display_entity/get_block_name
#
# Get the block name of a controlled block display entity
#> Storage
#  @block_name (out): the block name
#> Context
#  @executor (in): the controlled block display entity
#> Return void

data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:block_display_entity/get_block_name"
function server:selector_entity_list/select_by_string_uuid
