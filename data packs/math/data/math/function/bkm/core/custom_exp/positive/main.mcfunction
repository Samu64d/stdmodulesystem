#
# math:bkm/core/custom_exp/positive/main
#

# Start loop
scoreboard players set ::math::bkm i 0
scoreboard players operation ::math::bkm pow = ::const 2E16
function math:bkm/core/custom_exp/positive/loop

# Start loop2
execute if score ::math::bkm i < ::math::bkm::const BKM_EXP_ITERATIONS run function math:bkm/core/custom_exp/positive/loop2
