#
# stdmodulesystem:utils/list/remove/loop
#

# Check if the two elements are equal
data modify storage stdmodulesystem:volatile utils.list.temp_element set from storage io: element
execute store result score ::stdmodulesystem::utils::list temp0 run data modify storage stdmodulesystem:volatile utils.list.temp_element set from storage io: list[0]

# Add the element on check fails
execute if score ::stdmodulesystem::utils::list temp0 = ::const TRUE run data modify storage stdmodulesystem:volatile utils.list.temp_list append from storage io: list[0]

# Remove the element from the original list
data remove storage io: list[0]

# Get list length
execute store result score ::stdmodulesystem::utils::list length run function stdmodulesystem:utils/list/get_length

execute if score ::stdmodulesystem::utils::list length matches 1.. run function stdmodulesystem:utils/list/remove/loop

# Loop
