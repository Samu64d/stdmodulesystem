#
# server:selector_entity_list/select_by_array_uuid
#
# Select an entity by it's array uuid
#> Storage
#  @uuid (in): the entity array uuid
#  @callback (in): the callback function
#  @callback_results (out): the callback results
#> Return data
#  boolean flag

# Default success to false
scoreboard players operation ::server success = ::const FALSE

# Select the entity
function server:selector_entity_list/select_by_array_uuid/select with storage io:

# Return data
return run scoreboard players get ::server success
