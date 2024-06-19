#
# minecraft_entity_api:attribute/calc_attribute_total_value/add_value
#

# Get modifier value
function minecraft_entity_api:attribute/get_attribute_modifier_value

# Convert to floating point
data modify storage io: value set from storage io: modifier_value
function math:floating_point/from_storage

# Add values
data modify storage io: value0 set from storage minecraft_entity_api:volatile attribute.temp_fp_value
data modify storage io: value1 set from storage io: result
function math:floating_point/add
data modify storage minecraft_entity_api:volatile attribute.temp_fp_value set from storage io: result
