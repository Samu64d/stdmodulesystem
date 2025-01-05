#
# stdmodulesystem:utils/referenced_list/remove_last/remove
#

# Get the last element of the list
$data modify storage io: element set from $(list_ref)[-1]

# Remove the last element
$data remove $(list_ref)[-1]
