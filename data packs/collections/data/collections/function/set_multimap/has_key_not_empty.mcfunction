#
# collections:set_multimap/has_key_not_empty
#
# Check if a set multimap has a key not empty
#> Storage
#  @map (in): the set multimap
#  @key (in): the key
#> Return data
#  boolean flag

# Get key value
execute store result score ::collections::set_multimap success run function collections:set_multimap/get_all_from_key

# Check for not existent key
execute if score ::collections::set_multimap success = ::const FALSE run return run scoreboard players get ::const FALSE

# Check for not empty key value
execute if score ::collections::set_multimap success = ::const TRUE run return run function collections:set_multimap/has_key_not_empty/check_key_not_empty
