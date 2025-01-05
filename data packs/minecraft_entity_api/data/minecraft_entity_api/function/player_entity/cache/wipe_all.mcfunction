#
# minecraft_entity_api:player_entity/cache/wipe_all
#

# Clear static data
data remove storage minecraft_entity_api:static player_entity
data modify storage minecraft_entity_api:static player_entity set value {}

# Clear volatile data
data remove storage minecraft_entity_api:volatile player_entity
data modify storage minecraft_entity_api:volatile player_entity set value {}
