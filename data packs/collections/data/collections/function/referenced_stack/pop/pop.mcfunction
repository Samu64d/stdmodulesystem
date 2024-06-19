#
# collections:referenced_stack/pop/pop
#

# Get index
$return run data modify storage io: element set from storage $(stack_ref)[-1]

# Remove index
$data remove storage $(stack_ref)[-1]
