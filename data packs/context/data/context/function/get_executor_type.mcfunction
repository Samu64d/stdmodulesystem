#
# context:get_executor_type
#
# Get the context executor type
#> Context
#  @executor (in): the executor
#> Return data
#  executor type

# Default to server
scoreboard players operation ::context executor_type = ::context::enum_executor_types SERVER

# Entity
execute if function minecraft_entity_api:entity/is_entity run scoreboard players operation ::context executor_type = ::context::enum_executor_types ENTITY

# Player
execute if score ::context executor_type = ::context::enum_executor_types ENTITY if entity @s[type=minecraft:player] run scoreboard players operation ::context executor_type = ::context::enum_executor_types PLAYER

# Return data
return run scoreboard players get ::context executor_type
