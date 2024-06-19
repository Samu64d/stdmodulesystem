#
# minecraft_world_api:worldborder/api/modify_size
#
# Modify the world border size
#> Scores
#  @duration (in): the duration
#> Storage
#  @size (in): the world border size
#> Return data
#  boolean flag

# Modify
execute store result storage io: duration int 1.0 run scoreboard players get ::in duration
execute store result score ::minecraft_world_api::worldborder result run function minecraft_world_api:worldborder/api/modify_size/modify with storage io:
execute unless score ::minecraft_world_api::worldborder result = ::const FALSE run scoreboard players operation ::minecraft_world_api::worldborder result = ::const TRUE

# Return data
return run scoreboard players get ::minecraft_world_api::worldborder result
