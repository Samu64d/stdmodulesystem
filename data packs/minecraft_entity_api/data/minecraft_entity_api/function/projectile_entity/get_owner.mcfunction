#
# minecraft_entity_api:projectile_entity/get_owner
#
# Get the owner of an projectile entity
#> Storage
#  @owner (out): the owner
#> Context
#  @executor (in): the projectile entity
#> Return void

data modify storage io: owner set from entity @s Owner
