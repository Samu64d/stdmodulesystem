#
# soundsystem:objs/obj.3dsound/reproduce
#
# Reproduce the 3d sound sound
#> Context
#  @executor (in): the 3d sound
#> Return void

# Set reproduced flag
data modify entity @s data.reproduced set value true

# Get object pointer
data modify storage io: method set value "get_pointer"
function obj:invoke

# Get object position
data modify storage io: method set value "get_position"
function obj:invoke
data modify storage io: vector1 set from storage io: position

# Iterate through the online player list
data modify storage io: callback set value "soundsystem:objs/obj.3dsound/reproduce/handle_player"
function server:management/player_list/for_each_executor
