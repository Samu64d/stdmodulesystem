#
# obj:cache/wipe_all
#

# Clear static data
data remove storage obj:static {}
data modify storage obj:static {} set value {}

# Clear volatile data
data remove storage obj:volatile {}
data modify storage obj:volatile {} set value {}

function obj:runtime/cache/wipe_all
