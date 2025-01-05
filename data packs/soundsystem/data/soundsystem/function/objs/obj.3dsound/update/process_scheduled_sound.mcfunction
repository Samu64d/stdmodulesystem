#
# soundsystem:objs/obj.3dsound/update/process_scheduled_sound
#

# Get reproduce time
execute store result score ::soundsystem::objs::obj.3dsound temp0 run data get storage io: element.reproduce_time 1.0

# Get game time
execute store result score ::soundsystem::objs::obj.3dsound temp1 run function time:mc_time/get_game_time

# Calculate time difference
scoreboard players operation ::soundsystem::objs::obj.3dsound temp0 -= ::soundsystem::objs::obj.3dsound temp1

# Check cases

# Reproduce time is not reached
execute if score ::soundsystem::objs::obj.3dsound temp0 matches 1.. run return 0

# Reproduce time is reached
execute if score ::soundsystem::objs::obj.3dsound temp0 matches 0 run function soundsystem:objs/obj.3dsound/update/reproduce_scheduled_sound

# Reproduce time is expired
data modify storage io: list_ref set value "entity @s data.scheduled_sound_list"
data modify storage io: like_element set from storage io: element
function collections:referenced_list/remove_like
