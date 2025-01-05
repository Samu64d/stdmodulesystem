#
# number:to_fixed/is_not_fractional
#

# Add "."
data modify storage io: string0 set from storage io: string
data modify storage io: string1 set value "."
function string:concat

# Get length
execute store result score ::number length run function string:get_length

# Calculate final string size
scoreboard players operation ::number length += ::in places

# Add trailing zeros
function number:to_fixed/pad_trailing
