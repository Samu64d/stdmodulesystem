#
# minecraft_entity_api:entity/cache/wipe_all
#

# Clear static data
data remove storage minecraft_entity_api:static entity
data modify storage minecraft_entity_api:static entity set value {}

# Clear volatile data
data remove storage minecraft_entity_api:volatile entity
data modify storage minecraft_entity_api:volatile entity set value {}
