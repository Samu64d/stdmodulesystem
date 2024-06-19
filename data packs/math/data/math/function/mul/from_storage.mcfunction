#
# math:mul/from_storage
#

execute if score ::in p matches 1 store result score ::math result run data get storage math:volatile value 0.1
execute if score ::in p matches 2 store result score ::math result run data get storage math:volatile value 0.01
execute if score ::in p matches 3 store result score ::math result run data get storage math:volatile value 0.001
execute if score ::in p matches 4 store result score ::math result run data get storage math:volatile value 0.0001
execute if score ::in p matches 5 store result score ::math result run data get storage math:volatile value 0.00001
execute if score ::in p matches 6 store result score ::math result run data get storage math:volatile value 0.000001
execute if score ::in p matches 7 store result score ::math result run data get storage math:volatile value 0.0000001
execute if score ::in p matches 8 store result score ::math result run data get storage math:volatile value 0.00000001
