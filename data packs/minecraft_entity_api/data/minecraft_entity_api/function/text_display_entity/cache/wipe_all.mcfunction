#
# minecraft_entity_api:text_display_entity/cache/wipe_all
#

# Clear static data
data remove storage minecraft_entity_api:static text_display_entity
data modify storage minecraft_entity_api:static text_display_entity set value {}

# Clear volatile data
data remove storage minecraft_entity_api:volatile text_display_entity
data modify storage minecraft_entity_api:volatile text_display_entity set value {}
