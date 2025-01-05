#
# string:split/add_current_char
#

# Get character from parsed string
scoreboard players operation ::in index = ::string string_index
data modify storage io: array set from storage string:volatile parsed_string
function collections:array/get_index

# Insert into substring string
data modify storage io: array set from storage string:volatile parsed_substring
function collections:array/append
data modify storage string:volatile parsed_substring set from storage io: array
