#
# minecraft_entity_api:cache/wipe_all
#

# Clear static data
data remove storage minecraft_entity_api:static {}
data modify storage minecraft_entity_api:static {} set value {}

# Clear volatile data
data remove storage minecraft_entity_api:volatile {}
data modify storage minecraft_entity_api:volatile {} set value {}

function minecraft_entity_api:attribute/cache/wipe_all
function minecraft_entity_api:display_entity/cache/wipe_all
function minecraft_entity_api:entity/cache/wipe_all
function minecraft_entity_api:item_entity/cache/wipe_all
function minecraft_entity_api:player_entity/cache/wipe_all
function minecraft_entity_api:projectile_entity/cache/wipe_all
function minecraft_entity_api:text_display_entity/cache/wipe_all
