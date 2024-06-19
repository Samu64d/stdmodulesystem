#
# server:selector_entity_list/select_in_area
#
# Select all entities except players inside an area
#> Storage
#  @location (in): the location
#  @box (in): the area bounding box
#  @callback (in): the callback function
#> Return data
#  boolean flag

# Default success to false
scoreboard players operation ::server success = ::const FALSE

# Select the entity
data modify storage io: x set from storage io: location.position[0]
data modify storage io: y set from storage io: location.position[1]
data modify storage io: z set from storage io: location.position[2]
data modify storage io: dimension set from storage io: location.dimension
data modify storage io: dx set from storage io: box.x
data modify storage io: dy set from storage io: box.y
data modify storage io: dz set from storage io: box.z
function server:selector_entity_list/select_in_area_except_players/select with storage io:

# Return data
return run scoreboard players get ::server success
