#
# minecraft_entity_api:attribute/get_attribute_base_value/get
#

$return run data modify storage io: base_value set from entity @s attributes[{id:"$(attribute)"}].base
