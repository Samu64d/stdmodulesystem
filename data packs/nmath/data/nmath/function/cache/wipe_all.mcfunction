#
# nmath:cache/wipe_all
#

# Clear static data
data remove storage nmath:static {}
data modify storage nmath:static {} set value {}

# Clear volatile data
data remove storage nmath:volatile {}
data modify storage nmath:volatile {} set value {}

function nmath:vector2d/cache/wipe_all
function nmath:vector2f/cache/wipe_all
function nmath:vector3d/cache/wipe_all
function nmath:vector3f/cache/wipe_all
