#
# utils:face_state/for_each/face_up
#

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: face_state"
function stdmodulesystem:stack/push

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: callback"
function stdmodulesystem:stack/push

scoreboard players operation ::in current_face = ::utils::enum_directions UP
execute store result score ::inout face_value run data get storage io: face_state.up 1.0
$function $(callback)

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: callback"
function stdmodulesystem:stack/pop

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: face_state"
function stdmodulesystem:stack/pop

execute store result storage io: face_state.up byte 1.0 run scoreboard players get ::inout face_value
