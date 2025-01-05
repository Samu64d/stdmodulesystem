#
# minecraft_entity_api:projectile_entity/set_owner
#
# Set the owner of an projectile entity
#> Storage
#  @owner (in): the owner
#> Context
#  @executor (in): the projectile entity
#> Return data
#  boolean flag

return run data modify entity @s Owner set from storage io: owner
