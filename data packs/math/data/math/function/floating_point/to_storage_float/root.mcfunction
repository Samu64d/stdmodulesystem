#
# math:floating_point/to_storage_float/root
#

execute if score ::math::floating_point p matches -29..-20 run function math:floating_point/to_storage_float/-29_-20
execute if score ::math::floating_point p matches -19..-10 run function math:floating_point/to_storage_float/-19_-10
execute if score ::math::floating_point p matches -9..0 run function math:floating_point/to_storage_float/-9_0
execute if score ::math::floating_point p matches 1..10 run function math:floating_point/to_storage_float/1_10
execute if score ::math::floating_point p matches 11..20 run function math:floating_point/to_storage_float/11_20
execute if score ::math::floating_point p matches 21..30 run function math:floating_point/to_storage_float/21_30
execute if score ::math::floating_point p matches 31..32 run function math:floating_point/to_storage_float/31_32
