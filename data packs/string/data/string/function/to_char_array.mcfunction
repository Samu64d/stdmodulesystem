#
# string:to_char_array
#
# Parse a string into a character array
#> Storage
#  @string (in): the string
#  @array (out): the character array
#> Return void

# Create array
function collections:array/new

# Get string length
execute store result score ::string length run function string:get_length

# Start loop
scoreboard players set ::string string_index 0
execute if score ::string length matches 1.. run function string:to_char_array/loop
