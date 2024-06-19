#
# minecraft_entity_api:attribute/calc_attribute_total_value/add_multiplied_total
#

# Get modifier value
function minecraft_entity_api:attribute/get_attribute_modifier_value

# Convert to floating point
data modify storage io: value set from storage io: modifier_value
function math:floating_point/from_storage

# Add values
data modify storage io: value0 set from storage math:static floating_point.ONE
data modify storage io: value1 set from storage io: result
function math:floating_point/add

# Multiply values
data modify storage io: value0 set from storage minecraft_entity_api:volatile attribute.temp_fp_value
data modify storage io: value1 set from storage io: result
function math:floating_point/mul
data modify storage minecraft_entity_api:volatile attribute.temp_fp_value set from storage io: result
