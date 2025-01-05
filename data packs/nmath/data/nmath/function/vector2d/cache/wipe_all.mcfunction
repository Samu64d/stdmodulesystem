#
# nmath:vector2d/cache/wipe_all
#

# Clear static data
data remove storage nmath:static vector2d
data modify storage nmath:static vector2d set value {}

# Clear volatile data
data remove storage nmath:volatile vector2d
data modify storage nmath:volatile vector2d set value {}
