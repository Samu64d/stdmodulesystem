#
# minecraft_entity_api:entity/get_dimension
#
# Get the dimension at which an entity is situated
#> Storage
#  @dimension (out): the dimension
#> Context
#  @executor (in): the entity
#> Return void

# Get executor type
execute store result score ::minecraft_entity_api::entity executor_type run function context:get_executor_type

# Check for player
execute if score ::minecraft_entity_api::entity executor_type = ::context::enum_executor_types PLAYER run data modify storage io: dimension set from entity @s Dimension

# Check for entity
execute if score ::minecraft_entity_api::entity executor_type = ::context::enum_executor_types ENTITY at @s run function context:get_dimension
