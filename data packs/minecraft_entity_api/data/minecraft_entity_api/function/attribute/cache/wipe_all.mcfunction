#
# minecraft_entity_api:attribute/cache/wipe_all
#

# Clear static data
data remove storage minecraft_entity_api:static attribute
data modify storage minecraft_entity_api:static attribute set value {}

# Clear volatile data
data remove storage minecraft_entity_api:volatile attribute
data modify storage minecraft_entity_api:volatile attribute set value {}
