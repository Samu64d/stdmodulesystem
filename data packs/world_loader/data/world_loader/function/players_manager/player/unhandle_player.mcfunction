#
# world_loader:players_manager/player/unhandle_player
#

data modify storage io: player_uuid set from storage io: uuid

# Get the handled player descriptor
execute unless function world_loader:players_manager/handled_player_list/get_by_player_uuid run return 0

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: uuid"
function stdmodulesystem:stack/push

# Remove the ticking area
function world_loader:players_manager/player_area/player_area_unscheduler

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: uuid"
function stdmodulesystem:stack/pop

# Remove the player handler
function world_loader:players_manager/handled_player_list/remove_by_player_uuid
