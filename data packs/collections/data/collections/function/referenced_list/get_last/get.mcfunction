#
# collections:referenced_list/get_last/get
#

$data modify storage io: element set from $(list_ref)[-1]
