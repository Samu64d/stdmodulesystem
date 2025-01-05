#
# server:management/player_descriptor/new
#
# Create a new player descriptor of a player
#> Storage
#  @player_descriptor (out): the player descriptor
#> Context
#  @executor (in): the player entity
#> Return void

# Create object
data modify storage io: player_descriptor set value {name: "", uuid: "", join_time: -1}

# Set player name
function minecraft_entity_api:player_entity/get_name
data modify storage io: player_descriptor.name set from storage io: name

# Set player uuid
function minecraft_entity_api:entity/get_uuid_as_string
data modify storage io: player_descriptor.uuid set from storage io: uuid

# Set join time
execute store result storage io: player_descriptor.join_time int 1.0 run function server:api/get_session_time
