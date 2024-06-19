#
# collections:referenced_set_multimap/cache/wipe_all
#

# Clear static data
data remove storage collections:static referenced_set_multimap
data modify storage collections:static referenced_set_multimap set value {}

# Clear volatile data
data remove storage collections:volatile referenced_set_multimap
data modify storage collections:volatile referenced_set_multimap set value {}
