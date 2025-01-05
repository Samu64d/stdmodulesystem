#
# minecraft_world_api:worldborder/api/set_warning_time
#
# Set the world border warning time
#> Scores
#  @time (in): the world border warning time
#> Return data
#  boolean flag

execute store result storage io: time int 1.0 run scoreboard players get ::in time
execute store result score ::minecraft_world_api::worldborder result run function minecraft_world_api:worldborder/api/set_warning_time/set with storage io:
execute unless score ::minecraft_world_api::worldborder result = ::const FALSE run scoreboard players operation ::minecraft_world_api::worldborder result = ::const TRUE

# Return data
return run scoreboard players get ::minecraft_world_api::worldborder result
