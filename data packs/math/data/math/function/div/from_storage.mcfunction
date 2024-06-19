#
# math:div/from_storage
#

execute if score ::in p matches 1 store result score ::math result run data get storage math:volatile value 10
execute if score ::in p matches 2 store result score ::math result run data get storage math:volatile value 100
execute if score ::in p matches 3 store result score ::math result run data get storage math:volatile value 1000
execute if score ::in p matches 4 store result score ::math result run data get storage math:volatile value 10000
execute if score ::in p matches 5 store result score ::math result run data get storage math:volatile value 100000
execute if score ::in p matches 6 store result score ::math result run data get storage math:volatile value 1000000
execute if score ::in p matches 7 store result score ::math result run data get storage math:volatile value 10000000
execute if score ::in p matches 8 store result score ::math result run data get storage math:volatile value 100000000
