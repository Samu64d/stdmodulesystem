#
# minecraft_world_api:block/utils/spread_in_area/callback
#

# Default success to false
scoreboard players operation ::inout match_success = ::const FALSE

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: name"
function stdmodulesystem:stack/push

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: callback"
function stdmodulesystem:stack/push

# Call callback function
$function $(callback)

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: callback"
function stdmodulesystem:stack/pop

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: name"
function stdmodulesystem:stack/pop

# Spread on success
execute if score ::inout match_success = ::const TRUE run function minecraft_world_api:block/utils/spread_in_area/on_match_success
