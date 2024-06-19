#
# mineweather:server/player_entity/get_spawn_pos
#
# Get the spawn position vector
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <x: x component, y: y component, z: z component> {}

execute store result score ::out x run data get entity @s SpawnX 100.0
execute store result score ::out y run data get entity @s SpawnY 100.0
execute store result score ::out z run data get entity @s SpawnZ 100.0
