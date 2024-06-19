#
# server:selector_entity_list/for_each_except_players
#
# Iterate through the entity list except players
#> Storage
#  @callback (in): the callback function
#> Return void

# Iterate through the entity list
execute as @e[type=!minecraft:player] run function server:selector_entity_list/for_each_except_players/callback with storage io:
