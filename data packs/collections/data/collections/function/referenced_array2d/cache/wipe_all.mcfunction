#
# collections:referenced_array2d/cache/wipe_all
#

# Clear static data
data remove storage collections:static referenced_array2d
data modify storage collections:static referenced_array2d set value {}

# Clear volatile data
data remove storage collections:volatile referenced_array2d
data modify storage collections:volatile referenced_array2d set value {}
