#
# minecraft_entity_api:entity/get_portal_cooldown
#
# Get the number of ticks before which an entity may be teleported back through a nether portal
#> Context
#  @executor (in): the entity
#> Return data
#  number of ticks value

return run data get entity @s PortalCooldown 1.0
