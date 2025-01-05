#
# soundsystem:objs/obj.track/rewind
#
# Rewind a track
#> Context
#  @executor (in): the track
#> Return void

scoreboard players set ::in time 0
function soundsystem:objs/obj.track/set_time
