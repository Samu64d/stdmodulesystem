#
# number:to_fixed/trunc_trailing
#

scoreboard players operation ::in length = ::number length
execute if score ::in places matches 0 run scoreboard players remove ::in length 1
function string:trunc
