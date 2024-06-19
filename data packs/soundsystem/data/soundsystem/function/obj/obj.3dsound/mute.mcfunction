#
# soundsystem:obj/obj.3dsound/mute
#
# Mute a 3d sound
#> Context
#  @executor: the 3d sound
#> Return void

scoreboard players set ::in volume 0
function soundsystem:obj/obj.3dsound/set_volume
