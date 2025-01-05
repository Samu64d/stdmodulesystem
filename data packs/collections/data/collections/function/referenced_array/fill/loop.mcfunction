#
# collections:referenced_array/fill/loop
#

scoreboard players add ::collections::referenced_array index 1

# Append element
function collections:referenced_array/append

execute if score ::collections::referenced_array index < ::in size run function collections:referenced_array/fill/loop

# Loop
