#
# string:to_lowercase
#
# Set all string's characters lowercase
#> Storage
#  @string (in): the string
#> Return void

# Parse string
function string:to_char_array
execute store result score ::string string_size run function collections:array/get_size

# Start loop
scoreboard players set ::string index 0
data modify storage io: map set from storage string:static UPPERCASE_TO_LOWERCASE
execute if score ::string string_size matches 1.. run function string:common/character_map_loop

# Parse char array into string
function string:from_char_array
