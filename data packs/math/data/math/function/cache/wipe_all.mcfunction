#
# math:cache/wipe_all
#

# Clear static data
data remove storage math:static {}
data modify storage math:static {} set value {}

# Clear volatile data
data remove storage math:volatile {}
data modify storage math:volatile {} set value {}

function math:bkm/cache/wipe_all
function math:cordic/cache/wipe_all
function math:floating_point/cache/wipe_all
function math:hashtables/cache/wipe_all
