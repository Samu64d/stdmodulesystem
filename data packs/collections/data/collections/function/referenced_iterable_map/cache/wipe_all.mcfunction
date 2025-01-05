#
# collections:referenced_iterable_map/cache/wipe_all
#

# Clear static data
data remove storage collections:static referenced_iterable_map
data modify storage collections:static referenced_iterable_map set value {}

# Clear volatile data
data remove storage collections:volatile referenced_iterable_map
data modify storage collections:volatile referenced_iterable_map set value {}
