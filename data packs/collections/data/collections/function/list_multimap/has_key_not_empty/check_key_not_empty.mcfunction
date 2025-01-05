#
# collections:list_multimap/has_key_not_empty/check_key_not_empty
#

execute store result score ::collections::list_multimap success run function collections:list/is_empty
return run execute if score ::collections::list_multimap success = ::const FALSE
