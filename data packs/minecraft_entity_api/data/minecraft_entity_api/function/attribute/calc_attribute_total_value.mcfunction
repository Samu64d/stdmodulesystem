#
# minecraft_entity_api:attribute/calc_attribute_total_value
#
# Calculate an entity attribute total value. This will not check the specific attribute allowed values range
#> Storage
#  @attribute (in): the attribute name
#  @total_value (out): the attribute total value
#> Context
#  @executor (in): the entity
#> Return data
#  boolean flag

# Check if the entity has the attribute
execute unless function minecraft_entity_api:attribute/has_attribute run return 0

# Get base value
function minecraft_entity_api:attribute/get_attribute_base_value

# Convert to floating point
data modify storage io: value set from storage io: base_value
function math:floating_point/from_storage
data modify storage minecraft_entity_api:volatile attribute.temp_fp_value set from storage io: result

# Iterate through the attribute modifier list
data modify storage io: callback set value "minecraft_entity_api:attribute/calc_attribute_total_value/process_add_value_modifier"
function minecraft_entity_api:attribute/for_each_attribute_modifier

data modify storage minecraft_entity_api:volatile attribute.temp_fp_value2 set from storage math:static floating_point.ONE

# Iterate through the attribute modifier list
data modify storage io: callback set value "minecraft_entity_api:attribute/calc_attribute_total_value/process_add_multiplied_base_modifier"
function minecraft_entity_api:attribute/for_each_attribute_modifier

# Multiply values
data modify storage io: value0 set from storage minecraft_entity_api:volatile attribute.temp_fp_value
data modify storage io: value1 set from storage minecraft_entity_api:volatile attribute.temp_fp_value2
function math:floating_point/mul
data modify storage minecraft_entity_api:volatile attribute.temp_fp_value set from storage io: result

# Iterate through the attribute modifier list
data modify storage io: callback set value "minecraft_entity_api:attribute/calc_attribute_total_value/process_add_multiplied_total_modifier"
function minecraft_entity_api:attribute/for_each_attribute_modifier

# Convert to storage
data modify storage io: value set from storage minecraft_entity_api:volatile attribute.temp_fp_value
function math:floating_point/to_storage_double
data modify storage io: total_value set from storage io: result
