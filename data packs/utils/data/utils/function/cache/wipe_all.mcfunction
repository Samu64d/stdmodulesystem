#
# utils:cache/wipe_all
#

# Clear static data
data remove storage utils:static {}
data modify storage utils:static {} set value {}

# Clear volatile data
data remove storage utils:volatile {}
data modify storage utils:volatile {} set value {}

function utils:face_state/cache/wipe_all
