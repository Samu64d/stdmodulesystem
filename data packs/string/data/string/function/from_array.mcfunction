#
# string:from_char_array
#
# Join a string array into a string using the delimiter
#> Storage
#  @array (in): the string array
#  @delimiter (in): the delimiter
#  @string (out): the string
#> Return void

# Set default string
data modify storage io: string set value ""

# Get size
execute store result score ::string size run function collections:array/get_size

# Start loop
execute if score ::string size matches 1.. run function string:from_array/loop_init
