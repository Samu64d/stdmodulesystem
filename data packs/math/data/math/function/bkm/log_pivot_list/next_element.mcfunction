#
# math:bkm/log_pivot_list/next_element
#

execute store result score ::math::bkm pivot run data get storage math:volatile bkm.temp_list2[0] 100000000.0
data remove storage math:volatile bkm.temp_list2[0]
