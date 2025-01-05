#
# obj:objs/obj.controlled_block_display_entity/set_block_name
#
# Set the block name of a controlled block display entity
#> Storage
#  @block_name (in): the block name
#> Context
#  @executor (in): the controlled block display entity
#> Return void

data modify storage io: uuid set from entity @s data.controlled_entity
data modify storage io: callback set value "minecraft_entity_api:block_display_entity/set_block_name"
function server:selector_entity_list/select_by_string_uuid
