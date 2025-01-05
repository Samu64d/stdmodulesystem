#
# soundsystem:objs/obj.3dsound/new
#
# Create a new 3dsound from an object
#> Storage
#  @sound_id (in): the sound id
#  @channel (in): the channel
#  @base_volume (in): the base volume
#  @volume_attenuation (in): the volume attenuation
#  @speed (in): the sound speed
#  @auto_deletable (in): the auto deletable flag
#> Context
#  @executor (in): the base object
#> Return void

# Super
function obj:objs/obj.obj/new

# Sound id
data modify entity @s data.sound_id set from storage io: sound_id

# Channel
data modify entity @s data.channel set from storage io: channel

# Base volume
data modify entity @s data.base_volume set from storage io: base_volume

# Volume attenuation
data modify entity @s data.volume_attenuation set from storage io: volume_attenuation

# Speed
data modify entity @s data.speed set from storage io: speed

# Auto deletable flag
data modify entity @s data.auto_deletable set from storage io: auto_deletable

# Set reproduced flag
data modify entity @s data.reproduced set value false

# Scheduled sound list
data modify storage io: list_ref set value "entity @s data.scheduled_sound_list"
function collections:referenced_list/new
