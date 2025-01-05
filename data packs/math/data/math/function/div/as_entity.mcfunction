#
# math:div/as_entity
#

# Get value from matrix
data modify storage math:volatile matrix set value [1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d]
data modify storage math:volatile matrix[3] set from storage math:volatile value0
data modify storage math:volatile matrix[15] set from storage math:volatile value1
data modify entity @s transformation set from storage math:volatile matrix
data modify storage io: value set from entity @s transformation.translation[0]
