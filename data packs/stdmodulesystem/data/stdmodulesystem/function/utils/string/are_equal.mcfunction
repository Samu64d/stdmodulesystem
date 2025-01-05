#
# stdmodulesystem:utils/string/are_equal
#
# Check if two string are equal
#> Storage
#  @string0 (in): the first string to compare
#  @string1 (in): the second string to compare
#> Return value
#  boolean flag

execute store success score ::stdmodulesystem::utils::string success run data modify storage io: string0 set from storage io: string1
return run execute if score ::stdmodulesystem::utils::string success = ::const FALSE
