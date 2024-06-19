#
# string:internal/pad/loop
#

# Get pad string character at the pad string index
scoreboard players operation ::in index = ::string pad_string_index
data modify storage io: array set from storage string:volatile parsed_pad_string
function collections:array/get_index

# Insert element inside parsed string
scoreboard players operation ::in index = ::string index
data modify storage io: array set from storage string:volatile parsed_string
execute if score ::in from_the_end = ::const FALSE run function collections:array/insert_index
execute if score ::in from_the_end = ::const TRUE run function collections:array/append
data modify storage string:volatile parsed_string set from storage io: array

# Update pad string index
scoreboard players add ::string pad_string_index 1
execute if score ::string pad_string_index = ::string pad_string_size run scoreboard players set ::string pad_string_index 0

scoreboard players add ::string index 1
execute if score ::string index < ::string pad_size run function string:internal/pad/loop

# Loop
