#
# collections:referenced_set/cache/wipe_all
#

# Clear static data
data remove storage collections:static referenced_set
data modify storage collections:static referenced_set set value {}

# Clear volatile data
data remove storage collections:volatile referenced_set
data modify storage collections:volatile referenced_set set value {}
