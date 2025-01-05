#
# minecraft_world_api:worldborder/api/set_damage_buffer
#
# Set the world border damage buffer
#> Storage
#  @buffer (in): the world border damage buffer
#> Return data
#  boolean flag

execute store result score ::minecraft_world_api::worldborder result run function minecraft_world_api:worldborder/api/set_damage_buffer/set with storage io:
execute unless score ::minecraft_world_api::worldborder result = ::const FALSE run scoreboard players operation ::minecraft_world_api::worldborder result = ::const TRUE

# Return data
return run scoreboard players get ::minecraft_world_api::worldborder result
