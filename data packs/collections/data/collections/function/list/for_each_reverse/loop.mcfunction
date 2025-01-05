#
# collections:list/for_each_reverse/loop
#

# Get element at the index
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
scoreboard players operation ::collections::list index = ::out stack_score
function stdmodulesystem:stack/pop_score

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: callback"
function stdmodulesystem:stack/pop

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: list"
function stdmodulesystem:stack/pop

# Check for list limit
scoreboard players remove ::collections::list index 1
execute if score ::collections::list index matches 0.. run function collections:list/for_each_reverse/loop with storage io:

# Loop
