#
# camera:objs/obj.camera/follow
#
# Make a camera follow an object
#> Storage
#  @target (in): the target object
#  @offset (in): the offset
#> Context
#  @executor (in): the camera
#> Return void

# Set target
data modify entity @s data.target set from storage io: target

# Set offset
data modify entity @s data.offset set from storage io: offset
