#
# io:print/cache/wipe_all
#

# Clear static data
data remove storage io_:static print
data modify storage io_:static print set value {}

# Clear volatile data
data remove storage io_:volatile print
data modify storage io_:volatile print set value {}
