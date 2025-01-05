#
# collections:set/cache/wipe_all
#

# Clear static data
data remove storage collections:static set
data modify storage collections:static set set value {}

# Clear volatile data
data remove storage collections:volatile set
data modify storage collections:volatile set set value {}
