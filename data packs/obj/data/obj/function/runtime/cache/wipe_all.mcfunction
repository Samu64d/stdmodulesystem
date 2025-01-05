#
# obj:runtime/cache/wipe_all
#

# Clear static data
data remove storage obj:static runtime
data modify storage obj:static runtime set value {}

# Clear volatile data
data remove storage obj:volatile runtime
data modify storage obj:volatile runtime set value {}
