#
# collections:referenced_array/cache/wipe_all
#

# Clear static data
data remove storage collections:static referenced_array
data modify storage collections:static referenced_array set value {}

# Clear volatile data
data remove storage collections:volatile referenced_array
data modify storage collections:volatile referenced_array set value {}
