#
# collections:stack/pop/pop
#

# Get index
return run data modify storage io: element set from storage io: stack[-1]

# Remove index
data remove storage io: stack[-1]
