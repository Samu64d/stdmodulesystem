#
# minecraft_world_api:worldborder/api/set_warning_distance
#
# Set the world border warning distance
#> Scores
#  @distance (in): the world border warning distance
#> Return data
#  boolean flag

execute store result storage io: distance int 1.0 run scoreboard players get ::in distance
execute store result score ::minecraft_world_api::worldborder result run function minecraft_world_api:worldborder/api/set_warning_distance/set with storage io:
execute unless score ::minecraft_world_api::worldborder result = ::const FALSE run scoreboard players operation ::minecraft_world_api::worldborder result = ::const TRUE

# Return data
return run scoreboard players get ::minecraft_world_api::worldborder result
