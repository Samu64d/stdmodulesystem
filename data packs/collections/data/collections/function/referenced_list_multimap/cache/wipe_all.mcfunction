#
# collections:referenced_list_multimap/cache/wipe_all
#

# Clear static data
data remove storage collections:static referenced_list_multimap
data modify storage collections:static referenced_list_multimap set value {}

# Clear volatile data
data remove storage collections:volatile referenced_list_multimap
data modify storage collections:volatile referenced_list_multimap set value {}
