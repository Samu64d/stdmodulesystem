#
# minecraft_entity_api:attribute/calc_attribute_total_value/process_add_multiplied_base_modifier
#

# Get modifier operation
function minecraft_entity_api:attribute/get_attribute_modifier_operation

# Add multiplied base
data modify storage io: string0 set value "add_multiplied_base"
data modify storage io: string1 set from storage io: modifier_operation
execute if function string:are_equal run function minecraft_entity_api:attribute/calc_attribute_total_value/add_multiplied_base
