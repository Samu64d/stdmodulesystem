#
# server:selector_entity_list/select_in_area
#
# Select all entities inside an area
#> Storage
#  @dimension (in): the dimension
#  @position (in): the position
#  @box (in): the area bounding box
#  @callback (in): the callback function
#> Return data
#  boolean flag

# Default success to false
scoreboard players operation ::server success = ::const FALSE

# Get box values
data modify storage io: vector set from storage io: box
function nmath:vector3d/get_x
data modify storage io: dx set from storage io: x
function nmath:vector3d/get_y
data modify storage io: dy set from storage io: y
function nmath:vector3d/get_z
data modify storage io: dz set from storage io: z

# Get position values
data modify storage io: vector set from storage io: position
function nmath:vector3d/get_x
function nmath:vector3d/get_y
function nmath:vector3d/get_z

# Select the entities
function server:selector_entity_list/select_in_area/select with storage io:

# Return data
return run scoreboard players get ::server success
