#
# minecraft_world_api:worldborder/api/set_damage_amount
#
# Set the world border damage amount
#> Storage
#  @amount (in): the world border damage amount
#> Return data
#  boolean flag

execute store result score ::minecraft_world_api::worldborder result run function minecraft_world_api:worldborder/api/set_damage_amount/set with storage io:
execute unless score ::minecraft_world_api::worldborder result = ::const FALSE run scoreboard players operation ::minecraft_world_api::worldborder result = ::const TRUE

# Return data
return run scoreboard players get ::minecraft_world_api::worldborder result
