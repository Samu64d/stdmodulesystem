#
# math:bkm/log_value_list/next_element
#

execute store result score ::math::bkm e run data get storage math:volatile bkm.temp_list[0] 100000000.0
data remove storage math:volatile bkm.temp_list[0]
