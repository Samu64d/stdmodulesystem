#
# minecraft_entity_api:entity/is_falling
#
# Check if an entity is falling
#> Context
#  @executor (in): the entity
#> Return data
#  boolean flag

# Get fall distance
function minecraft_entity_api:entity/get_fall_distance

# To floating point
data modify storage io: value set from storage io: fall_distance
function math:floating_point/from_storage

# Compare
data modify storage io: value0 set from storage math:static floating_point.ZERO
data modify storage io: value1 set from storage io: result
return run function math:floating_point/compare/less
