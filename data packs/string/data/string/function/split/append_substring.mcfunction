#
# string:split/append_substring
#

data modify storage io: array set from storage string:volatile substring_list
data modify storage io: element set from storage io: string
function collections:array/append
data modify storage string:volatile substring_list set from storage io: array
