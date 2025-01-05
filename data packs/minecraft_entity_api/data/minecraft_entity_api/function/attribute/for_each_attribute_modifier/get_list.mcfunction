#
# minecraft_entity_api:attribute/for_each_attribute_modifier/get_list
#

$data modify storage minecraft_entity_api:volatile attribute.temp_list set from entity @s attributes[{id:"$(attribute)"}].modifiers
