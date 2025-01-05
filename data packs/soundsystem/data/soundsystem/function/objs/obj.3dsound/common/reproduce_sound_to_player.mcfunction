#
# soundsystem:objs/obj.3dsound/common/reproduce_sound_to_player
#

# Get player dimension
function minecraft_entity_api:entity/get_dimension

# Get player position
function minecraft_entity_api:entity/get_position

# Hardcoded values
data modify storage io: pitch set value 1.0
data modify storage io: minimum_volume set value 0.0

# Play sound
function soundsystem:api/play
