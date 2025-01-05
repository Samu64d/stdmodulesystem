#
# server:selector_entity_list/select_by_string_uuid
#
# Select an entity by it's uuid
#> Storage
#  @uuid (in): the player uuid
#  @callback (in): the callback function
#  @callback_results (out): the callback results
#> Return data
#  boolean flag

# Default success to false
scoreboard players operation ::server success = ::const FALSE

# Select the entity
function server:selector_entity_list/select_by_string_uuid/select with storage io:

# Return data
return run scoreboard players get ::server success
