#
# string:trim_start/loop
#

# Check for equal characters

# Get main string character at the string index
data modify storage io: string0 set value " "

# Get search string character at the search string index
scoreboard players set ::in index 0
data modify storage io: array set from storage string:volatile parsed_string
function collections:array/get_index
data modify storage io: string1 set from storage io: element

# Check if the two characters are equal
execute store result score ::string success run function string:are_equal

# Characters are equal
execute if score ::string success = ::const TRUE run function string:trim_start/remove_character

execute if score ::string success = ::const TRUE run function string:trim_start/loop

# Loop
