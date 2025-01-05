#
# soundsystem:objs/obj.track/set_time
#
# Set the time of a track
#> Scores
#  @time (in): the time value
#> Context
#  @executor (in): the track
#> Return void

scoreboard players operation @s soundsystem_objs_obj.track_time = ::in time
