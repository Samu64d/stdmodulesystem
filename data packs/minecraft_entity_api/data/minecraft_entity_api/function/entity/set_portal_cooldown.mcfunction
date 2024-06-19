#
# minecraft_entity_api:entity/set_portal_cooldown
#
# Set the number of ticks before which an entity may be teleported back through a nether portal. This
# function will fails if the entity is of player type
#> Scores
#  @portal_cooldown (in): the number of ticks value
#> Context
#  @executor (in): the entity
#> Return data
#  boolean flag

# Copy data
execute store result storage minecraft_entity_api:volatile entity.temp_value int 1.0 run scoreboard players get ::in portal_cooldown

# Set data
return run data modify entity @s PortalCooldown set from storage minecraft_entity_api:volatile entity.temp_value
