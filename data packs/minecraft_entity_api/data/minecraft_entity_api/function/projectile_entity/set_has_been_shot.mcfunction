#
# minecraft_entity_api:projectile_entity/set_has_been_shot
#
# Set if a projectile entity as been shot
#> Scores
#  @has_been_shot (in): boolean flag
#> Context
#  @executor (in): the projectile entity
#> Return data
#  boolean flag

# Copy data
execute store result storage minecraft_entity_api:volatile projectile_entity.temp_value byte 1.0 run scoreboard players get ::in has_been_shot

# Set data
return run data modify entity @s HasBeenShot set from storage minecraft_entity_api:volatile projectile_entity.temp_value
