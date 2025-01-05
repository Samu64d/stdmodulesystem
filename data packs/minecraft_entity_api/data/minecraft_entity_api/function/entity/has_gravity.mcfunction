#
# minecraft_entity_api:entity/has_gravity
#
# Check if an entity has gravity
#> Context
#  @executor (in): the entity
#> Return data
#  boolean flag

# Get data
execute store result score ::minecraft_entity_api::entity temp0 run data get entity @s NoGravity 1.0

# Return data
return run execute if score ::minecraft_entity_api::entity temp0 = ::const FALSE
