#
# soundsystem:objs/obj.3dsound/get_sound_id
#
# Get the sound id of a 3d sound
#> Storage
#  @sound_id (out): the sound id
#> Context
#  @executor (in): the 3d sound
#> Return void

data modify storage io: sound_id set from entity @s data.sound_id
