#
# collections:referenced_list/update_like/update
#

$return run data modify $(list_ref)[$(like_element)] set from $(element_ref)
