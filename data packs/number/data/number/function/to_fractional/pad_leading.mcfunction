#
# number:to_fractional/pad_leading
#

# Add "0"
data modify storage io: string0 set value "0"
data modify storage io: string1 set from storage io: string
function string:concat
