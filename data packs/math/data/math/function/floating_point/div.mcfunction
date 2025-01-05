#
# math:floating_point/div
#
# Divide two floating point numbers
# Reference: https://github.com/Ai-Akaishi/AiMath/blob/main/data/math/functions/float/calc.mcfunction
#> Storage
#  @value0 (in): the first floating point number to divide
#  @value1 (in): the second floating point number to divide
#  @result (out): the result value
#> Return void

# To storage value0
data modify storage io: value set from storage io: value0
function math:floating_point/to_storage_double
data modify storage math:volatile floating_point.value0 set from storage io: result

# To storage value1
data modify storage io: value set from storage io: value1
function math:floating_point/to_storage_double
data modify storage math:volatile floating_point.value1 set from storage io: result

# Create entity
data modify storage io: type set value "minecraft:item_display"
data modify storage io: callback set value "math:floating_point/div/as_entity"
function minecraft_entity_api:entity/new_transient

# Get from storage
function math:floating_point/from_storage
