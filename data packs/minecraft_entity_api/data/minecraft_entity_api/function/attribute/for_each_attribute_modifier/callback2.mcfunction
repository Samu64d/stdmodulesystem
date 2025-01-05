#
# minecraft_entity_api:attribute/for_each_attribute_modifier/callback2
#

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage minecraft_entity_api:volatile attribute.temp_callback"
function stdmodulesystem:stack/push

$function $(callback)

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage minecraft_entity_api:volatile attribute.temp_callback"
function stdmodulesystem:stack/pop
