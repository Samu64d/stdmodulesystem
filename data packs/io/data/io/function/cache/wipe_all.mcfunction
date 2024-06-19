#
# io:cache/wipe_all
#

# Clear static data
data remove storage io_:static {}
data modify storage io_:static {} set value {}

# Clear volatile data
data remove storage io_:volatile {}
data modify storage io_:volatile {} set value {}

function io:print/cache/wipe_all
