#
# server:management/player_descriptor/new
#
# Create a new player descriptor of a player
#> Storage
#  @player_descriptor (out): the player descriptor
#> Context
#  @executor (in): the player
#> Return void

# Create object
data modify storage io: player_descriptor set value {name: "", uuid: [I; 0, 0, 0, 0]}

# Set player name
function server:player_entity/get_name
data modify storage io: player_descriptor.name set from storage io: name

# Set player uuid
function server:player_entity/get_uuid
data modify storage io: player_descriptor.uuid set from storage io: uuid
