#
# nmath:vector3d/cache/wipe_all
#

# Clear static data
data remove storage nmath:static vector3d
data modify storage nmath:static vector3d set value {}

# Clear volatile data
data remove storage nmath:volatile vector3d
data modify storage nmath:volatile vector3d set value {}
