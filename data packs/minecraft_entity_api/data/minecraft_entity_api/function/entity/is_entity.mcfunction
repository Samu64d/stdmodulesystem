#
# minecraft_entity_api:entity/is_entity
#
# Check if the executor is an entity
#> Context
#  @executor (in): the executor
#> Return data
#  boolean flag

# Check
execute store success score ::minecraft_entity_api::entity temp0 run data get entity @s UUID[0] 1.0

# Return data
return run scoreboard players get ::minecraft_entity_api::entity temp0
