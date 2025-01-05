#
# string:internal/pad/loop_init
#

# Parse strings

# String
function string:to_char_array
data modify storage string:volatile parsed_string set from storage io: array
execute store result score ::string string_size run function collections:array/get_size

# Pad
data modify storage io: string set from storage io: pad
function string:to_char_array
data modify storage string:volatile parsed_pad_string set from storage io: array
execute store result score ::string pad_string_size run function collections:array/get_size

# Start loop
scoreboard players set ::string index 0
scoreboard players set ::string pad_string_index 0
function string:internal/pad/loop

# Parse char array into string
data modify storage io: array set from storage string:volatile parsed_string
function string:from_char_array
