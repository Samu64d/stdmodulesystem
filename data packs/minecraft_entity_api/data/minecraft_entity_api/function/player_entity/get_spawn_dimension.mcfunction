#
# mineweather:server/player_entity/get_spawn_dimension
#
# Get the spawn dimension name
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <> {spawnDimension: spawn dimension name}

# Check existence
execute store success score ::player_entity temp0 run execute if data entity @s SpawnDimension

# If exist
execute if score ::player_entity temp0 = ::const TRUE run data modify storage mineweather:io spawnDimension set from entity @s SpawnDimension

# If not exist
execute if score ::player_entity temp0 = ::const FALSE run data modify storage mineweather:io spawnDimension set from storage mineweather:static playerEntity.DEFAULT_SPAWN_DIMENSION
