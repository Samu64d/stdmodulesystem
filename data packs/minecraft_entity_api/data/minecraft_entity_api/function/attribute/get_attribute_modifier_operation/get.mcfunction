#
# minecraft_entity_api:attribute/get_attribute_modifier_operation/get
#

$return run data modify storage io: modifier_operation set from entity @s attributes[{id:"$(attribute)"}].modifiers[{id:"$(modifier_id)"}].operation
