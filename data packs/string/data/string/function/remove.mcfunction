#
# string:remove
#
# Remove all substrings occurences inside a string
#> Storage
#  @string (inout): the string
#  @search (in): the substring to search
#> Return void

data modify storage io: replace set value ""
function string:replace
