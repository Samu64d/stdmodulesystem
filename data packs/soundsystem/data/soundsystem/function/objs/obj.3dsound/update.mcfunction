#
# soundsystem:objs/obj.3dsound/update
#
# Update the state of a 3dsound
#> Context
#  @executor (in): the 3dsound
#> Return void

# Super
function obj:objs/obj.obj/update

# Iterate throuth the scheduled sound list
data modify storage io: list_ref set value "entity @s data.scheduled_sound_list"
data modify storage io: callback set value "soundsystem:objs/obj.3dsound/update/process_scheduled_sound"
function collections:referenced_list/for_each_reverse

# Check for delete sound

# Get auto deletable flag
execute store result score ::soundsystem::objs::obj.3dsound temp0 run data get entity @s data.auto_deletable 1.0

# Get reproduced flag
execute store result score ::soundsystem::objs::obj.3dsound temp1 run data get entity @s data.reproduced 1.0

# Check for empty scheduled sound list
data modify storage io: list_ref set value "entity @s data.scheduled_sound_list"
execute store result score ::soundsystem::objs::obj.3dsound temp2 run function collections:referenced_list/is_empty

# Delete sound
execute if score ::soundsystem::objs::obj.3dsound temp0 = ::const TRUE if score ::soundsystem::objs::obj.3dsound temp1 = ::const TRUE if score ::soundsystem::objs::obj.3dsound temp2 = ::const TRUE run function obj:delete
