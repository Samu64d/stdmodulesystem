#
# string:from_char_array
#
# Parse a character array into a string
#> Storage
#  @array (in): the character array
#  @string (out): the string
#> Return void

# Create string
data modify storage io: string set value ""

# Get array length
execute store result score ::string string_size run function collections:array/get_size

# Start loop
scoreboard players set ::string string_index 0
execute if score ::string string_size matches 1.. run function string:from_char_array/loop
