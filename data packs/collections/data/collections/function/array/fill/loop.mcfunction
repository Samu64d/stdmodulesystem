#
# collections:array/fill/loop
#

scoreboard players add ::collections::array index 1

# Append element
function collections:array/append

execute if score ::collections::array index < ::in size run function collections:array/fill/loop

# Loop
