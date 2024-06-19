#
# collections:referenced_list/remove_first/remove
#

# Get the first element of the list
$data modify storage io: element set from storage $(list_ref)[0]

# Remove the first element
$data remove storage $(list_ref)[0]
