#
# minecraft_entity_api:attribute/get_attribute_modifier_operation
#
# Get an entity attribute modifier operation
#> Storage
#  @attribute (in): the attribute name
#  @modifier_id (in): the modifier id
#  @modifier_operation (out): the modifier operation
#> Context
#  @executor (in): the entity
#> Return data
#  boolean flag

data remove storage io: modifier_operation
return run function minecraft_entity_api:attribute/get_attribute_modifier_operation/get with storage io:
