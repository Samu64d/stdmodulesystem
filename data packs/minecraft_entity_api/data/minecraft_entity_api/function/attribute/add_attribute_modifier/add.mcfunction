#
# minecraft_entity_api:attribute/add_attribute_modifier/add
#

$execute store success score ::minecraft_entity_api::attribute success run attribute @s $(attribute) modifier add $(modifier_id) $(modifier_value) $(modifier_operation)
