#
# number:to_fractional/is_not_fractional
#

# Add ".0"
data modify storage io: string0 set from storage io: string
data modify storage io: string1 set value ".0"
function string:concat
