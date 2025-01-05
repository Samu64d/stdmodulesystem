#
# soundsystem:objs/obj.track/set_loop
#
# Set the loop flag of a track
#> Scores
#  @loop (in): the boolean flag
#> Context
#  @executor (in): the track
#> Return void

scoreboard players operation @s soundsystem_objs_obj.track_loop = ::in loop
