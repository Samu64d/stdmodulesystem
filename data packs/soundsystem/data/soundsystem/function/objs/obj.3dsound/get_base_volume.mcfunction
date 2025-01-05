#
# soundsystem:objs/obj.3dsound/get_base_volume
#
# Get the base volume of a 3d sound
#> Storage
#  @volume (out): the base volume
#> Context
#  @executor (in): the 3d sound
#> Return void

data modify storage io: base_volume set from entity @s data.base_volume
