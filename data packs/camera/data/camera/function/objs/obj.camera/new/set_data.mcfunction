#
# camera:objs/obj.camera/new/set_data
#

# Set dimension
function minecraft_entity_api:entity/set_dimension

# Set position
function minecraft_entity_api:entity/set_position

# Set teleport duration
scoreboard players operation ::in teleport_duration = ::in moving_animation_duration
function minecraft_entity_api:display_entity/set_teleport_duration

# Return uuid
function minecraft_entity_api:entity/get_uuid_as_string
