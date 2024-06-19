#
# collections:set/is_empty
#
# Check if a set is empty
#> Storage
#  @set (in): the set
#> Return data
#  boolean flag

# Get size
execute store result score ::collections::set size run function collections:set/get_size

# Check for zero size
return run execute if score ::collections::set size matches 0
