#
# minecraft_entity_api:display_entity/cache/wipe_all
#

# Clear static data
data remove storage minecraft_entity_api:static display_entity
data modify storage minecraft_entity_api:static display_entity set value {}

# Clear volatile data
data remove storage minecraft_entity_api:volatile display_entity
data modify storage minecraft_entity_api:volatile display_entity set value {}
