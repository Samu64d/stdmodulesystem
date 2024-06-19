#
# string:slice/remove_current_char
#

# Remove character from parsed string array
scoreboard players operation ::in index = ::string index
function collections:array/remove_index
