#
# soundsystem:objs/obj.3dsound/schedule_sound
#

# Add the scheduled sound object to the scheduled sound list
data modify storage io: list_ref set value "entity @s data.scheduled_sound_list"
data modify storage io: element_ref set value "storage io: scheduled_sound_object"
function collections:referenced_list/add_last
