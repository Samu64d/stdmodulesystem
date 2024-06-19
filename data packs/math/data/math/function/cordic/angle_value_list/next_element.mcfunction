#
# math:cordic/angle_value_list/next_element
#

execute store result score ::math::cordic e run data get storage math:volatile cordic.temp_list[0] 100000000.0
data remove storage math:volatile cordic.temp_list[0]
