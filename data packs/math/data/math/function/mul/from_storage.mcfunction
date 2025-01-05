#
# math:mul/from_storage
#

execute if score ::in p matches 1 run return run data get storage math:volatile value 0.1
execute if score ::in p matches 2 run return run data get storage math:volatile value 0.01
execute if score ::in p matches 3 run return run data get storage math:volatile value 0.001
execute if score ::in p matches 4 run return run data get storage math:volatile value 0.0001
execute if score ::in p matches 5 run return run data get storage math:volatile value 0.00001
execute if score ::in p matches 6 run return run data get storage math:volatile value 0.000001
execute if score ::in p matches 7 run return run data get storage math:volatile value 0.0000001
execute if score ::in p matches 8 run return run data get storage math:volatile value 0.00000001
