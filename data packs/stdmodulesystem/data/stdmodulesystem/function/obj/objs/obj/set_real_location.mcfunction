#
# stdmodulesystem:obj/objs/obj/set_real_location
#
# Set the real world location of an object
#> Storage
#  @location (in): the world location
#> Context
#  @executor: the object
#> Return void

# Position
data modify storage io: position set from storage io: location.position
function stdmodulesystem:obj/objs/obj/set_real_location/set_position

# Dimension
data modify storage io: dimension set from storage io: location.dimension
function stdmodulesystem:obj/objs/obj/set_real_location/set_dimension with storage io:
