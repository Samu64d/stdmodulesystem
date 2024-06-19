#
# stdmodulesystem:obj/obj_runtime/set_location
#

# Position
data modify storage io: position set from storage io: location.position
function stdmodulesystem:obj/obj_runtime/set_location/set_position

# Dimension
data modify storage io: dimension set from storage io: location.dimension
function stdmodulesystem:obj/obj_runtime/set_location/set_dimension with storage io:
