#
# collections:set/for_each/loop
#

# Get element at index
execute store result storage io: index int 1.0 run scoreboard players get ::collections::set index
function collections:set/common/get_index with storage io:

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: set"
function stdmodulesystem:stack/push

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: callback"
function stdmodulesystem:stack/push

# Push the element onto the stack
scoreboard players operation ::in stack_score = ::collections::set index
function stdmodulesystem:stack/push_score

# Call callback function
$function $(callback)

# Pop the element from the stack
function stdmodulesystem:stack/pop_score
scoreboard players operation ::collections::set index = ::out stack_score

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: callback"
function stdmodulesystem:stack/pop

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: set"
function stdmodulesystem:stack/pop

# Get set size
execute store result score ::collections::set size run function collections:set/get_size

# Check for set limit
scoreboard players add ::collections::set index 1
execute if score ::collections::set index < ::collections::set size run function collections:set/for_each/loop with storage io:

# Loop
