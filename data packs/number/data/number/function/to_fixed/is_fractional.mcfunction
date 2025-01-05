#
# number:to_fixed/is_fractional
#

# Get length
execute store result score ::number temp0 run function string:get_length

# Calculate final string size
scoreboard players operation ::number length = ::number index
scoreboard players operation ::number length += ::in places
scoreboard players add ::number length 1

# Add trailing zeros
execute if score ::number length > ::number temp0 run function number:to_fixed/pad_trailing

# Remove decimal places
execute if score ::number length < ::number temp0 run function number:to_fixed/trunc_trailing

# Add leading zero
execute if score ::number index matches 0 run function number:to_fixed/pad_leading
