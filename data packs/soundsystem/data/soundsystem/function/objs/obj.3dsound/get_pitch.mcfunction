#
# soundsystem:objs/obj.3dsound/get_pitch
#
# Get the pitch of a 3d sound
#> Storage
#  @pitch (out): the pitch
#> Context
#  @executor (in): the 3d sound
#> Return void

data modify storage io: pitch set from entity @s data.pitch
