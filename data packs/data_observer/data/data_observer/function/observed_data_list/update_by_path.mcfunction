#
# data_observer:observed_data_list/update_by_path
#
# Update an observed data descritpor with another observed data descriptor from the observed data list by it's path
#> Storage
#  @path (in): the path
#  @observed_data_descriptor (in): the observed data descriptor
#> Return void

# Update on matching path
data modify storage io: list_ref set value "storage data_observer:data observed_data_list"
data modify storage io: like_element set value {}
data modify storage io: like_element.path set from storage io: path
data modify storage io: element_ref set value "storage io: observed_data_descriptor"
function collections:referenced_list/update_like
