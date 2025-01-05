#
# soundsystem:objs/obj.3dsound/get_speed
#
# Get the speed of a 3d sound
#> Storage
#  @speed (out): the speed
#> Context
#  @executor (in): the 3d sound
#> Return void

data modify storage io: speed set from entity @s data.speed
