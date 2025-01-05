#
# minecraft_entity_api:projectile_entity/cache/wipe_all
#

# Clear static data
data remove storage minecraft_entity_api:static projectile_entity
data modify storage minecraft_entity_api:static projectile_entity set value {}

# Clear volatile data
data remove storage minecraft_entity_api:volatile projectile_entity
data modify storage minecraft_entity_api:volatile projectile_entity set value {}
