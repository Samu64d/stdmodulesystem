#
# data_observer:observed_data_list/remove_by_path
#
# Remove an observed data descritpor from the observed data list by it's path
#> Storage
#  @path (in): the path
#> Return void

# Remove on matching path
data modify storage io: list_ref set value "storage data_observer:data observed_data_list"
data modify storage io: like_element set value {}
data modify storage io: like_element.path set from storage io: path
function collections:referenced_list/remove_like
