#
# stdmodulesystem:utils/referenced_list/for_each/loop
#

# Get element at the index
execute store result storage io: index int 1.0 run scoreboard players get ::stdmodulesystem::utils::referenced_list index
function stdmodulesystem:utils/referenced_list/common/get_index with storage io:

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: list_ref"
function stdmodulesystem:stack/push

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: callback"
function stdmodulesystem:stack/push

# Push the element onto the stack
scoreboard players operation ::in stack_score = ::stdmodulesystem::utils::referenced_list index
function stdmodulesystem:stack/push_score

# Call callback function
$function $(callback)

# Pop the element from the stack
function stdmodulesystem:stack/pop_score
scoreboard players operation ::stdmodulesystem::utils::referenced_list index = ::out stack_score

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: callback"
function stdmodulesystem:stack/pop

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: list_ref"
function stdmodulesystem:stack/pop

# Get list length
execute store result score ::stdmodulesystem::utils::referenced_list length run function stdmodulesystem:utils/referenced_list/get_length

# Check for list limit
scoreboard players add ::stdmodulesystem::utils::referenced_list index 1
execute if score ::stdmodulesystem::utils::referenced_list index < ::stdmodulesystem::utils::referenced_list length run function stdmodulesystem:utils/referenced_list/for_each/loop with storage io:

# Loop
