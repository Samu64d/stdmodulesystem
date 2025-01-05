#
# string:trim_end
#
# Remove whitespaces from the end of a string
#> Storage
#  @string (inout): the string
#> Return void

# Parse string
function string:to_char_array
data modify storage string:volatile parsed_string set from storage io: array
execute store result score ::string string_size run function collections:array/get_size

# Start loop
execute if score ::string string_size matches 1.. run function string:trim_end/loop

# Parse char array into string
data modify storage io: array set from storage string:volatile parsed_string
function string:from_char_array
