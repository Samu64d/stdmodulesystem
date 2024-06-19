#
# minecraft_entity_api:attribute/get_attribute_base_value
#
# Get an entity attribute base value
#> Storage
#  @attribute (in): the attribute name
#  @base_value (out): the attribute base value
#> Context
#  @executor (in): the entity
#> Return data
#  boolean flag

data remove storage io: base_value
return run function minecraft_entity_api:attribute/get_attribute_base_value/get with storage io:
