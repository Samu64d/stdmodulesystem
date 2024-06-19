#
# soundsystem:obj/obj.3dsound/rewind
#
# Rewind a 3d sound
#> Context
#  @executor: the 3d sound
#> Return void

scoreboard players set ::in time 0
function soundsystem:obj/obj.3dsound/set_time
