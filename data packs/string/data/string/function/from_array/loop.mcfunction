#
# string:from_array/loop
#

# Get array element
scoreboard players operation ::in index = ::string index
function collections:array/get_index

# Concat base string with delimiter
execute unless score ::string index matches 0 run function string:from_array/concat_delimiter

# Concat base string with the string
data modify storage io: string0 set from storage io: string
data modify storage io: string1 set from storage io: element
function string:concat

scoreboard players add ::string index 1
execute if score ::string index < ::string size run function string:from_array/loop
