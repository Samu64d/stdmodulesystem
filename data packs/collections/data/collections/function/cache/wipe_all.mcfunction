#
# collections:cache/wipe_all
#

# Clear static data
data remove storage collections:static {}
data modify storage collections:static {} set value {}

# Clear volatile data
data remove storage collections:volatile {}
data modify storage collections:volatile {} set value {}

function collections:iterable_map/cache/wipe_all
function collections:list/cache/wipe_all
function collections:referenced_array/cache/wipe_all
function collections:referenced_array2d/cache/wipe_all
function collections:referenced_array3d/cache/wipe_all
function collections:referenced_iterable_map/cache/wipe_all
function collections:referenced_list/cache/wipe_all
function collections:referenced_list_multimap/cache/wipe_all
function collections:referenced_set/cache/wipe_all
function collections:referenced_set_multimap/cache/wipe_all
function collections:set/cache/wipe_all
