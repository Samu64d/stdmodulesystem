#
# stdmodulesystem:utils/list/remove
#
# Get and remove a matching element from a list
#> Storage
#  @list (inout): the list
#  @element (in): the element
#> Return void

# Get list length
execute store result score ::stdmodulesystem::utils::list length run function stdmodulesystem:utils/list/get_length

# Create temporary list
data modify storage stdmodulesystem:volatile utils.list.temp_list set value []

# Start loop
execute if score ::stdmodulesystem::utils::list length matches 1.. run function stdmodulesystem:utils/list/remove/loop

# Copy buffer
data modify storage io: list set from storage stdmodulesystem:volatile utils.list.temp_list
