#
# collections:referenced_list/get_on_match/loop
#

# Get element at the index
execute store result storage io: index int 1.0 run scoreboard players get ::collections::referenced_list index
function collections:referenced_list/common/get_index with storage io:

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: list_ref"
function stdmodulesystem:stack/push

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: callback"
function stdmodulesystem:stack/push

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: found_list"
function stdmodulesystem:stack/push

# Push the element onto the stack
scoreboard players operation ::in stack_score = ::collections::referenced_list index
function stdmodulesystem:stack/push_score

# Set default flag value
scoreboard players operation ::inout match_success = ::const FALSE

# Call callback function
$function $(callback)

# Pop the element from the stack
function stdmodulesystem:stack/pop_score
scoreboard players operation ::collections::referenced_list index = ::out stack_score

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: found_list"
function stdmodulesystem:stack/pop

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: callback"
function stdmodulesystem:stack/pop

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: list_ref"
function stdmodulesystem:stack/pop

# Get element at the index
execute store result storage io: index int 1.0 run scoreboard players get ::collections::referenced_list index
function collections:referenced_list/common/get_index with storage io:

# Add the element to the found list on check success
execute if score ::inout match_success = ::const TRUE run data modify storage io: found_list append from storage io: element

# Get list length
execute store result score ::collections::referenced_list length run function collections:referenced_list/get_length

# Stop search
execute if score ::inout match_success = ::const TRUE if score ::collections::referenced_list search_only_one = ::const TRUE run scoreboard players operation ::collections::referenced_list index = ::collections::referenced_list length

# Check for list limit
scoreboard players add ::collections::referenced_list index 1
execute if score ::collections::referenced_list index < ::collections::referenced_list length run function collections:referenced_list/get_on_match/loop with storage io:

# Loop
