#
# minecraft_entity_api:attribute/get_attribute_modifier_value/get
#

$return run data modify storage io: modifier_value set from entity @s attributes[{id:"$(attribute)"}].modifiers[{id:"$(modifier_id)"}].amount
