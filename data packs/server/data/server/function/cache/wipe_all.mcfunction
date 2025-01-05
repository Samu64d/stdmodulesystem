#
# server:cache/wipe_all
#

# Clear static data
data remove storage server:static {}
data modify storage server:static {} set value {}

# Clear volatile data
data remove storage server:volatile {}
data modify storage server:volatile {} set value {}

function server:event_system/cache/wipe_all
function server:management/cache/wipe_all
