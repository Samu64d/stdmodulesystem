#
# minecraft_entity_api:item_entity/cache/wipe_all
#

# Clear static data
data remove storage minecraft_entity_api:static item_entity
data modify storage minecraft_entity_api:static item_entity set value {}

# Clear volatile data
data remove storage minecraft_entity_api:volatile item_entity
data modify storage minecraft_entity_api:volatile item_entity set value {}
