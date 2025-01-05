#
# soundsystem:cache/wipe_all
#

# Clear static data
data remove storage soundsystem:static {}
data modify storage soundsystem:static {} set value {}

# Clear volatile data
data remove storage soundsystem:volatile {}
data modify storage soundsystem:volatile {} set value {}

function soundsystem:objs/obj.3dsound/cache/wipe_all
