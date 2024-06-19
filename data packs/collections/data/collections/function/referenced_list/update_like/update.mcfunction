#
# collections:referenced_list/update_like/update
#

$return run data modify storage $(list_ref)[$(like_element)] set from storage $(element_ref)
