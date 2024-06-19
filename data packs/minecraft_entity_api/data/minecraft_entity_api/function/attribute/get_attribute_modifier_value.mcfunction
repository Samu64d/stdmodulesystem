#
# minecraft_entity_api:attribute/get_attribute_modifier_value
#
# Get an entity attribute modifier value
#> Storage
#  @attribute (in): the attribute name
#  @modifier_id (in): the modifier id
#  @modifier_value (out): the modifier value
#> Context
#  @executor (in): the entity
#> Return data
#  boolean flag

data remove storage io: modifier_value
return run function minecraft_entity_api:attribute/get_attribute_modifier_value/get with storage io:
