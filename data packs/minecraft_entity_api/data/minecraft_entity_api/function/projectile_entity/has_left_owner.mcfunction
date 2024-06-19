#
# minecraft_entity_api:projectile_entity/has_left_owner
#
# Check if a projectile entity as left it's owner hitbox
#> Context
#  @executor (in): the projectile entity
#> Return data
#  boolean flag

return run data get entity @s LeftOwner 1.0
