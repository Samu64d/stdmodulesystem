#
# collections:referenced_list/cache/wipe_all
#

# Clear static data
data remove storage collections:static referenced_list
data modify storage collections:static referenced_list set value {}

# Clear volatile data
data remove storage collections:volatile referenced_list
data modify storage collections:volatile referenced_list set value {}
