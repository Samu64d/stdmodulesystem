#
# data_observer:observed_data_list/contains_by_path
#
# Check if the observed data list contains an observed data descriptor referencing a data path
#> Storage
#  @path (in): the observed data descriptor
#> Return data
#  boolean flag

# Contains on matching chunk
data modify storage io: list_ref set value "storage data_observer:data observed_data_list"
data modify storage io: like_element set value {}
data modify storage io: like_element.path set from storage io: path
return run function collections:referenced_list/contains_like
