#
# keyboard:main/active_player_keyboard_map/for_each_player_uuid/callback2
#

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage keyboard:volatile temp_callback"
function stdmodulesystem:stack/push

$function $(callback)

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage keyboard:volatile temp_callback"
function stdmodulesystem:stack/pop
