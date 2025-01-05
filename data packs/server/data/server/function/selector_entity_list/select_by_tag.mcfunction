#
# server:selector_entity_list/select_by_tag
#
# Select all entities with a tag
#> Storage
#  @tag (in): the tag
#  @callback (in): the callback function
#> Return data
#  boolean flag

# Default success to false
scoreboard players operation ::server success = ::const FALSE

# Select the entities
function server:selector_entity_list/select_by_tag/select with storage io:

# Return data
return run scoreboard players get ::server success
