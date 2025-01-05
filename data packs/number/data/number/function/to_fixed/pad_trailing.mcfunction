#
# number:to_fixed/pad_trailing
#

scoreboard players operation ::in length = ::number length
data modify storage io: pad set value "0"
function string:pad_end
