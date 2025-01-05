#
# minecraft_entity_api:projectile_entity/set_left_owner
#
# Set if a projectile entity as left it's owner hitbox
#> Scores
#  @left_owner (in): boolean flag
#> Context
#  @executor (in): the projectile entity
#> Return data
#  boolean flag

# Copy data
execute store result storage minecraft_entity_api:volatile projectile_entity.temp_value byte 1.0 run scoreboard players get ::in left_owner

# Set data
return run data modify entity @s LeftOwner set from storage minecraft_entity_api:volatile projectile_entity.temp_value
