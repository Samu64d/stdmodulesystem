#
# data_observer:main/process_observed_data
#

# Get path
function data_observer:observed_data_descriptor/get_path

# Get data
function data_observer:observed_data_descriptor/get_data

# Get previous data
function data_observer:observed_data_descriptor/get_prev_data

# Get changed flag
execute store result score ::data_observer changed run function data_observer:observed_data_descriptor/has_changed

# Save data
data modify storage data_observer:volatile temp_data set from storage io: data

# Check not matching
execute store success score ::data_observer success run data modify storage data_observer:volatile temp_data set from storage io: prev_data

# Start change

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: observed_data_descriptor"
function stdmodulesystem:stack/push

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: data"
function stdmodulesystem:stack/push

# Push the element onto the stack
scoreboard players operation ::in stack_score = ::data_observer changed
function stdmodulesystem:stack/push_score

# On check success
execute if score ::data_observer success = ::const TRUE if score ::data_observer changed = ::const FALSE run function data_observer:main/on_data_start_change

# Pop the element from the stack
function stdmodulesystem:stack/pop_score
scoreboard players operation ::data_observer changed = ::out stack_score

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: data"
function stdmodulesystem:stack/pop

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: observed_data_descriptor"
function stdmodulesystem:stack/pop

# Tick change

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: observed_data_descriptor"
function stdmodulesystem:stack/push

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: data"
function stdmodulesystem:stack/push

# Push the element onto the stack
scoreboard players operation ::in stack_score = ::data_observer changed
function stdmodulesystem:stack/push_score

# On check success
execute if score ::data_observer success = ::const TRUE run function data_observer:main/on_data_tick_change

# Pop the element from the stack
function stdmodulesystem:stack/pop_score
scoreboard players operation ::data_observer changed = ::out stack_score

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: data"
function stdmodulesystem:stack/pop

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: observed_data_descriptor"
function stdmodulesystem:stack/pop

# End change

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: observed_data_descriptor"
function stdmodulesystem:stack/push

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: data"
function stdmodulesystem:stack/push

# Push the element onto the stack
scoreboard players operation ::in stack_score = ::data_observer changed
function stdmodulesystem:stack/push_score

# On check fails
execute if score ::data_observer success = ::const FALSE if score ::data_observer changed = ::const TRUE run function data_observer:main/on_data_end_change

# Pop the element from the stack
function stdmodulesystem:stack/pop_score
scoreboard players operation ::data_observer changed = ::out stack_score

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: data"
function stdmodulesystem:stack/pop

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: observed_data_descriptor"
function stdmodulesystem:stack/pop

# Update previous data
data modify storage io: prev_data set from storage io: data
function data_observer:observed_data_descriptor/set_prev_data

# Update changed flag
scoreboard players operation ::in changed = ::data_observer success
function data_observer:observed_data_descriptor/set_changed

# Update descriptor
function data_observer:observed_data_list/update_by_path
