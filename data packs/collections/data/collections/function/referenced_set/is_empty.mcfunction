#
# collections:referenced_set/is_empty
#
# Check if a set is empty
#> Storage
#  @set_ref (in): the set reference
#> Return data
#  boolean flag

# Get size
execute store result score ::collections::referenced_set size run function collections:referenced_set/get_size

# Check for zero size
return run execute if score ::collections::referenced_set size matches 0
