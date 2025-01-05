#
# math:floating_point/round/add_one
#

data modify storage io: value0 set from storage io: value
data modify storage io: value1 set from storage math:static floating_point.ONE
function math:floating_point/add
