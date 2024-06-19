#
# soundsystem:obj/obj.3dsound/set_loop
#
# Set the loop flag of a 3d sound
#> Scores
#  @loop (in): the boolean flag
#> Context
#  @executor: the 3d sound
#> Return void

scoreboard players operation @s soundsystem_obj_obj.3dsound_loop = ::in loop
