#
# string:common/map_character
#

# Get value character
function collections:map/get_key

# Set array index
scoreboard players operation ::in index = ::string index
data modify storage io: element set from storage io: value
function collections:array/set_index
