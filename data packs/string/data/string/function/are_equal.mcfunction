#
# string:are_equal
#
# Check if two string are equal
#> Storage
#  @string0 (in): the first string to compare
#  @string1 (in): the second string to compare
#> Return value
#  boolean flag

data modify storage string:volatile temp_string set from storage io: string0
execute store success score ::string success run data modify storage string:volatile temp_string set from storage io: string1
return run execute if score ::string success = ::const FALSE
