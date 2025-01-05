#
# soundsystem:objs/obj.3dsound/get_volume_attenuation
#
# Get the volume attenuation of a 3d sound
#> Storage
#  @volume (out): the volume attenuation
#> Context
#  @executor (in): the 3d sound
#> Return void

data modify storage io: volume_attenuation set from entity @s data.volume_attenuation

