#
# collections:set_multimap/has_key_not_empty/check_key_not_empty
#

execute store result score ::collections::set_multimap success run function collections:set/is_empty
return run execute if score ::collections::set_multimap success = ::const FALSE
