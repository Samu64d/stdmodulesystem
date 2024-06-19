#
# string:cache/wipe_all
#

# Clear static data
data remove storage string:static list
data modify storage string:static list set value {}

# Clear volatile data
data remove storage string:volatile list
data modify storage string:volatile list set value {}
