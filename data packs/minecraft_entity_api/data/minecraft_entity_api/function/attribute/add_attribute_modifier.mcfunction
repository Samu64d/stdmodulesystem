#
# minecraft_entity_api:attribute/add_attribute_modifier
#
# Add a modifier to an entity attribute
#> Storage
#  @attribute (in): the attribute name
#  @modifier_id (in): the modifier id
#  @modifier_value (in): the modifier value
#  @modifier_operation (in): the modifier operation
#> Context
#  @executor (in): the entity
#> Return data
#  boolean flag

# Default success to false
scoreboard players operation ::minecraft_entity_api::attribute success = ::const FALSE

# Add attribute modifier
function minecraft_entity_api:attribute/add_attribute_modifier/add with storage io:

# Return data
return run scoreboard players get ::minecraft_entity_api::attribute success
