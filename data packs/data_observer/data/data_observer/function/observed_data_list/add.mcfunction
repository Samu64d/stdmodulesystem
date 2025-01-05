#
# data_observer:observed_data_list/add
#
# Add an observed data descriptor to the observed data list
#> Storage
#  @observed_data_descriptor (in): the observed data descriptor
#> Return void

# Push the element onto the stack
data modify storage io: stack_element_ref set value "storage io: observed_data_descriptor"
function stdmodulesystem:stack/push

# Check if the observed data descriptor is already in the data list
execute store result score ::data_observer success run function data_observer:observed_data_list/contains_by_path

# Pop the element from the stack
data modify storage io: stack_element_ref set value "storage io: observed_data_descriptor"
function stdmodulesystem:stack/pop

# Add the observed data descriptor to the data list
execute if score ::data_observer success = ::const FALSE run function data_observer:observed_data_list/add/add

# Update the observed data descriptor to the data list
execute if score ::data_observer success = ::const TRUE run function data_observer:observed_data_list/add/update
