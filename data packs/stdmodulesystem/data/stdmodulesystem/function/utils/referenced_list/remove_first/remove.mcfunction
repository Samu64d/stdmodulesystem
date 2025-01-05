#
# stdmodulesystem:utils/referenced_list/remove_first/remove
#

# Get the first element of the list
$data modify storage io: element set from $(list_ref)[0]

# Remove the first element
$data remove $(list_ref)[0]
