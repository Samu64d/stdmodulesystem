#
# camera:objs/obj.camera/update
#
# Update the state of a camera
#> Context
#  @executor (in): the camera
#> Return void

# Super
function obj:objs/obj.controlled_entity/update

# Check for active target
data modify storage io: method set value "has_target"
execute if function obj:invoke run function camera:objs/obj.camera/update/update_with_target
