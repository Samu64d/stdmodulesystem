#
# string:find/on_found
#

scoreboard players set ::in index 0
data modify storage io: array set from storage io: found_list
function collections:array/get_index
execute store result score ::string index run data get storage io: element 1.0
