#
# math:floating_point/div/as_entity
#

# Get value from matrix
data modify storage math:volatile floating_point.matrix set value [1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d]
data modify storage math:volatile floating_point.matrix[3] set from storage math:volatile floating_point.value0
data modify storage math:volatile floating_point.matrix[15] set from storage math:volatile floating_point.value1
data modify entity @s transformation set from storage math:volatile floating_point.matrix
data modify storage io: value set from entity @s transformation.translation[0]
