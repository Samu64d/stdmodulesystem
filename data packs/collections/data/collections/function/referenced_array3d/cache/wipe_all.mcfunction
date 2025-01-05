#
# collections:referenced_array3d/cache/wipe_all
#

# Clear static data
data remove storage collections:static referenced_array3d
data modify storage collections:static referenced_array3d set value {}

# Clear volatile data
data remove storage collections:volatile referenced_array3d
data modify storage collections:volatile referenced_array3d set value {}
