#
# nmath:vector2f/cache/wipe_all
#

# Clear static data
data remove storage nmath:static vector2f
data modify storage nmath:static vector2f set value {}

# Clear volatile data
data remove storage nmath:volatile vector2f
data modify storage nmath:volatile vector2f set value {}
