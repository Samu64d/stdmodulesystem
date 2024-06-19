#
# server:selector_entity_list/get_count_except_players
#
# Get the count of entities except players in the selector entity list
#> Return data
#  selector entity list count except players

return run execute if entity @e[type=!minecraft:player]
