#
# soundsystem:objs/obj.3dsound/update/reproduce_scheduled_sound
#

# Get sound id
data modify storage io: sound_id set from storage io: element.sound_id

# Get channel
data modify storage io: channel set from storage io: element.channel

# Get volume
data modify storage io: volume set from storage io: element.volume

# Get target uuid
data modify storage io: uuid set from storage io: element.target

# Reproduce sound to player
data modify storage io: callback set value "soundsystem:objs/obj.3dsound/common/reproduce_sound_to_player"
function server:selector_entity_list/select_by_string_uuid
