#
# collections:iterable_map/cache/wipe_all
#

# Clear static data
data remove storage collections:static iterable_map
data modify storage collections:static iterable_map set value {}

# Clear volatile data
data remove storage collections:volatile iterable_map
data modify storage collections:volatile iterable_map set value {}
