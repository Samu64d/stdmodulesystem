#
# nmath:vector3f/cache/wipe_all
#

# Clear static data
data remove storage nmath:static vector3f
data modify storage nmath:static vector3f set value {}

# Clear volatile data
data remove storage nmath:volatile vector3f
data modify storage nmath:volatile vector3f set value {}
