#
# math:divf
#
# Divide two numbers with arbitrary fixed point precision
#> Scores
#  @value0 (in): the first number to divide
#  @value1 (in): the second number to divide
#  @p (in): the fixed point digits
#> Return data
#  result

# To storage value0
execute store result storage math:volatile value0 double 1.0 run scoreboard players get ::in value0

# To storage value1
execute store result storage math:volatile value1 double 1.0 run scoreboard players get ::in value1

# Create entity
data modify storage io: type set value "minecraft:item_display"
data modify storage io: callback set value "math:div/as_entity"
function minecraft_entity_api:entity/new_transient

# Get from storage
return run function math:from_storagef
