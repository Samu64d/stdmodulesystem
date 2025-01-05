#
# server:management/cache/wipe_all
#

# Clear static data
data remove storage server:static management
data modify storage server:static management set value {}

# Clear volatile data
data remove storage server:volatile management
data modify storage server:volatile management set value {}
