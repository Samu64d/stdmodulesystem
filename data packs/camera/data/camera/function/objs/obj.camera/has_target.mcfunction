#
# camera:objs/obj.camera/has_target
#
# Check if a camera has a target
#> Context
#  @executor (in): the camera
#> Return data
#  boolean flag

return run execute unless data entity @s data{target: "NULL"}
