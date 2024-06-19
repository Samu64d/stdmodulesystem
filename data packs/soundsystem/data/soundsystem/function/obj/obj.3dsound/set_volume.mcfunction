#
# soundsystem:obj/obj.3dsound/set_volume
#
# Set the volume of a 3d sound
#> Scores
#  @volume (in): the sound volume
#> Context
#  @executor: the 3d sound
#> Return void

scoreboard players operation @s soundsystem_obj_obj.3dsound_volume = ::in volume
