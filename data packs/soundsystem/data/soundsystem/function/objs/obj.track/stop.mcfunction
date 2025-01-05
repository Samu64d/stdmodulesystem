#
# soundsystem:objs/obj.track/stop
#
# Stop a track
#> Context
#  @executor (in): the track
#> Return void

scoreboard players operation @s soundsystem_objs_obj.track_is_playing = ::const FALSE
