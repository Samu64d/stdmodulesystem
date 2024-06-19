#
# soundsystem:obj/obj.3dsound/stop
#
# Stop a 3d sound
#> Context
#  @executor: the 3d sound
#> Return void

scoreboard players operation @s soundsystem_obj_obj.3dsound_is_playing = ::const FALSE
