#
# string:from_array/concat_delimiter
#

data modify storage io: string0 set from storage io: string
data modify storage io: string1 set from storage io: delimiter
function string:concat
