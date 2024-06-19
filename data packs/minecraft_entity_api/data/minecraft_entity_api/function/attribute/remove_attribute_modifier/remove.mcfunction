#
# minecraft_entity_api:attribute/remove_attribute_modifier/remove
#

$execute store success score ::minecraft_entity_api::attribute success run attribute @s $(attribute) modifier remove $(modifier_id)
