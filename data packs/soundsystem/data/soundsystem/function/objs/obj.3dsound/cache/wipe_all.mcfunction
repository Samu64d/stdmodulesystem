#
# soundsystem:objs/obj.3dsound/cache/wipe_all
#

# Clear static data
data remove storage soundsystem:static obj3dsound
data modify storage soundsystem:static obj3dsound set value {}

# Clear volatile data
data remove storage soundsystem:volatile obj3dsound
data modify storage soundsystem:volatile obj3dsound set value {}
