#
# soundsystem:objs/obj.3dsound/get_channel
#
# Get the channel of a 3d sound
#> Storage
#  @channel (out): the channel
#> Context
#  @executor (in): the 3d sound
#> Return void

data modify storage io: channel set from entity @s data.channel
