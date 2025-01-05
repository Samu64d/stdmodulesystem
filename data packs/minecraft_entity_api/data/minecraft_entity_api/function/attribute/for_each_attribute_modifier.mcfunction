#
# minecraft_entity_api:attribute/for_each_attribute_modifier
#
# Iterate through all the modifiers of an entity attribute
#> Storage
#  @attribute (in): the attribute name
#  @callback (in): the callback function
#> Context
#  @executor (in): the entity
#> Return void

data modify storage minecraft_entity_api:volatile attribute.temp_callback set from storage io: callback

# Get the attribute modifier list
data modify storage io: list_ref set value "storage minecraft_entity_api:volatile attribute.temp_list"
function collections:referenced_list/new
function minecraft_entity_api:attribute/for_each_attribute_modifier/get_list with storage io:

# Iterate through the attribute modifier list
data modify storage io: list_ref set value "storage minecraft_entity_api:volatile attribute.temp_list"
data modify storage io: callback set value "minecraft_entity_api:attribute/for_each_attribute_modifier/callback"
function collections:referenced_list/for_each
