#
# server:api/get_entity_count
#
# Get the number of loaded entities
#> Return data
#  player list count

return run scoreboard players get ::server selector_loaded_entities
