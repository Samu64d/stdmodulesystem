#
# collections:referenced_list/remove_last/remove
#

# Get the last element of the list
$data modify storage io: element set from storage $(list_ref)[-1]

# Remove the last element
$data remove storage $(list_ref)[-1]
