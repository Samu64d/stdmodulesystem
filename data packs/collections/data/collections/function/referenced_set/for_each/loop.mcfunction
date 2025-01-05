#
# collections:referenced_set/for_each/loop
#

# Get element at index
execute store result storage io: index int 1.0 run scoreboard players get ::collections::referenced_set index
function collections:referenced_set/common/get_index with storage io:

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: set_ref"
function stdmodulesystem:stack/push

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: callback"
function stdmodulesystem:stack/push

# Push the element onto the stack
scoreboard players operation ::in stack_score = ::collections::referenced_set index
function stdmodulesystem:stack/push_score

# Call callback function
$function $(callback)

# Pop the element from the stack
function stdmodulesystem:stack/pop_score
scoreboard players operation ::collections::referenced_set index = ::out stack_score

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: callback"
function stdmodulesystem:stack/pop

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: set_ref"
function stdmodulesystem:stack/pop

# Get set size
execute store result score ::collections::referenced_set size run function collections:referenced_set/get_size

# Check for set limit
scoreboard players add ::collections::referenced_set index 1
execute if score ::collections::referenced_set index < ::collections::referenced_set size run function collections:referenced_set/for_each/loop with storage io:

# Loop
