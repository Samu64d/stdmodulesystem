#
# minecraft_entity_api:attribute/remove_attribute_modifier
#
# Remove a modifier from an entity attribute
#> Storage
#  @attribute (in): the attribute name
#  @modifier_id (in): the modifier id
#> Context
#  @executor (in): the entity
#> Return data
#  boolean flag

data modify storage io: attribute set value "minecraft:generic.armor"
data modify storage io: modifier_id set value "minecraft:0-0-0-0-0"

# Default success to false
scoreboard players operation ::minecraft_entity_api::attribute success = ::const FALSE

# Remove attribute modifier
function minecraft_entity_api:attribute/remove_attribute_modifier/remove with storage io:

# Return data
return run scoreboard players get ::minecraft_entity_api::attribute success
