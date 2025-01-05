#
# minecraft_world_api:light/api/get_level_at_pos/get
#

scoreboard players set ::minecraft_world_api::light level -1
$execute in $(dimension) positioned $(x) $(y) $(z) if predicate minecraft_world_api:light/total/has_level_0 run scoreboard players set ::minecraft_world_api::light level 0
$execute in $(dimension) positioned $(x) $(y) $(z) if predicate minecraft_world_api:light/total/has_level_1 run scoreboard players set ::minecraft_world_api::light level 1
$execute in $(dimension) positioned $(x) $(y) $(z) if predicate minecraft_world_api:light/total/has_level_2 run scoreboard players set ::minecraft_world_api::light level 2
$execute in $(dimension) positioned $(x) $(y) $(z) if predicate minecraft_world_api:light/total/has_level_3 run scoreboard players set ::minecraft_world_api::light level 3
$execute in $(dimension) positioned $(x) $(y) $(z) if predicate minecraft_world_api:light/total/has_level_4 run scoreboard players set ::minecraft_world_api::light level 4
$execute in $(dimension) positioned $(x) $(y) $(z) if predicate minecraft_world_api:light/total/has_level_5 run scoreboard players set ::minecraft_world_api::light level 5
$execute in $(dimension) positioned $(x) $(y) $(z) if predicate minecraft_world_api:light/total/has_level_6 run scoreboard players set ::minecraft_world_api::light level 6
$execute in $(dimension) positioned $(x) $(y) $(z) if predicate minecraft_world_api:light/total/has_level_7 run scoreboard players set ::minecraft_world_api::light level 7
$execute in $(dimension) positioned $(x) $(y) $(z) if predicate minecraft_world_api:light/total/has_level_8 run scoreboard players set ::minecraft_world_api::light level 8
$execute in $(dimension) positioned $(x) $(y) $(z) if predicate minecraft_world_api:light/total/has_level_9 run scoreboard players set ::minecraft_world_api::light level 9
$execute in $(dimension) positioned $(x) $(y) $(z) if predicate minecraft_world_api:light/total/has_level_10 run scoreboard players set ::minecraft_world_api::light level 10
$execute in $(dimension) positioned $(x) $(y) $(z) if predicate minecraft_world_api:light/total/has_level_11 run scoreboard players set ::minecraft_world_api::light level 11
$execute in $(dimension) positioned $(x) $(y) $(z) if predicate minecraft_world_api:light/total/has_level_12 run scoreboard players set ::minecraft_world_api::light level 12
$execute in $(dimension) positioned $(x) $(y) $(z) if predicate minecraft_world_api:light/total/has_level_13 run scoreboard players set ::minecraft_world_api::light level 13
$execute in $(dimension) positioned $(x) $(y) $(z) if predicate minecraft_world_api:light/total/has_level_14 run scoreboard players set ::minecraft_world_api::light level 14
$execute in $(dimension) positioned $(x) $(y) $(z) if predicate minecraft_world_api:light/total/has_level_15 run scoreboard players set ::minecraft_world_api::light level 15
return run scoreboard players get ::minecraft_world_api::light level
