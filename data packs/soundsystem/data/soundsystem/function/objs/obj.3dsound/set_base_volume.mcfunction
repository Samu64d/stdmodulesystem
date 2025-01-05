#
# soundsystem:objs/obj.3dsound/set_base_volume
#
# Set the base volume of a 3d sound
#> Storage
#  @volume (in): the base volume
#> Context
#  @executor (in): the 3d sound
#> Return void

data modify entity @s data.base_volume set from storage io: base_volume
