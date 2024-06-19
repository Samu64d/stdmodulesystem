#
# math:bkm/core/custom_exp/negative/loop
#

# Get the logarithm hashtable value
function math:bkm/log_value_list/next_element

# Check for pivot value
execute if score ::math::bkm x <= ::math::bkm e run function math:bkm/core/custom_exp/negative/mul_2mi

# Update power
execute if score ::math::bkm i matches 0 run scoreboard players operation ::math::bkm pow = ::const 2E8
execute if score ::math::bkm i matches 1 run scoreboard players operation ::math::bkm pow = ::const 2E4
execute if score ::math::bkm i matches 2 run scoreboard players operation ::math::bkm pow = ::const 2E2
execute if score ::math::bkm i matches 3 run scoreboard players operation ::math::bkm pow = ::const 2E1

scoreboard players add ::math::bkm i 1
execute if score ::math::bkm i matches ..4 if score ::math::bkm i < ::math::bkm::const BKM_EXP_ITERATIONS run function math:bkm/core/custom_exp/negative/loop
