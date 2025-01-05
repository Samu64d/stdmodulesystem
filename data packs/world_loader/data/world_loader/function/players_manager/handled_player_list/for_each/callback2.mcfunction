#
# world_loader:players_manager/handled_player_list/for_each/callback2
#

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage world_loader:volatile players_manager.temp_callback"
function stdmodulesystem:stack/push

$function $(callback)

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage world_loader:volatile players_manager.temp_callback"
function stdmodulesystem:stack/pop
