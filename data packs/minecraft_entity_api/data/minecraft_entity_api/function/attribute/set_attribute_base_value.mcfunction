#
# minecraft_entity_api:attribute/set_attribute_base_value
#
# Set an entity attribute base value
#> Storage
#  @attribute (in): the attribute name
#  @base_value (in): the attribute base value
#> Context
#  @executor (in): the entity
#> Return data
#  boolean flag

# Default success to false
scoreboard players operation ::minecraft_entity_api::attribute success = ::const FALSE

# Set attribute base value
function minecraft_entity_api:attribute/set_attribute_base_value/set with storage io:

# Return data
return run scoreboard players get ::minecraft_entity_api::attribute success
