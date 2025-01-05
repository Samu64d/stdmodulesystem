#
# soundsystem:objs/obj.3dsound/set_pitch
#
# Set the pitch of a 3d sound
#> Storage
#  @pitch (in): the pitch
#> Context
#  @executor (in): the 3d sound
#> Return void

data modify entity @s data.pitch set from storage io: pitch
