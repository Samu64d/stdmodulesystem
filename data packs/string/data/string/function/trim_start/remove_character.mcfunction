#
# string:trim_start/remove_character
#

scoreboard players set ::in index 0
data modify storage io: array set from storage string:volatile parsed_string
function collections:array/remove_index
data modify storage string:volatile parsed_string set from storage io: array
