#
# collections:list/cache/wipe_all
#

# Clear static data
data remove storage collections:static list
data modify storage collections:static list set value {}

# Clear volatile data
data remove storage collections:volatile list
data modify storage collections:volatile list set value {}
