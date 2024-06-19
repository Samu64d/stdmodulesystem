#
# minecraft_entity_api:attribute/for_each_attribute_modifier/callback
#

# Call callback function
data modify storage io: modifier_id set from storage io: element.id
data modify storage io: callback set from storage minecraft_entity_api:volatile attribute.temp_callback
function minecraft_entity_api:attribute/for_each_attribute_modifier/callback2 with storage io:
