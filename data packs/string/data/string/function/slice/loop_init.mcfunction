#
# string:slice/loop_init
#

# Parse string
function string:to_char_array

# Start loop
scoreboard players operation ::string index = ::string string_size
scoreboard players remove ::string string_size 1
function string:slice/loop

# Parse char array into string
function string:from_char_array
