#
# soundsystem:obj/obj.3dsound/set_time
#
# Set the time of a 3d sound
#> Scores
#  @time (in): the sound time
#> Context
#  @executor: the 3d sound
#> Return void

scoreboard players operation @s soundsystem_obj_obj.3dsound_time = ::in time
