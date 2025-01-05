#
# collections:list/for_each_update/loop
#

# Get index
execute store result storage io: index int 1.0 run scoreboard players get ::collections::list index
function collections:list/common/get_index with storage io:

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: list"
function stdmodulesystem:stack/push

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: callback"
function stdmodulesystem:stack/push

# Push the element onto the stack
scoreboard players operation ::in stack_score = ::collections::list index
function stdmodulesystem:stack/push_score

# Call callback function
$function $(callback)

# Pop the element from the stack
function stdmodulesystem:stack/pop_score
scoreboard players operation ::collections::list index = ::out stack_score

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: callback"
function stdmodulesystem:stack/pop

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: list"
function stdmodulesystem:stack/pop

# Update element
execute store result storage io: index int 1.0 run scoreboard players get ::collections::list index
function collections:list/common/set_index with storage io:

# Get list length
execute store result score ::collections::list length run function collections:list/get_length

# Check for list limit
scoreboard players add ::collections::list index 1
execute if score ::collections::list index < ::collections::list length run function collections:list/for_each_update/loop with storage io:

# Loop
