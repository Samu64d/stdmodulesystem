#
# math:bkm/boot/bootmgr
#

# Load constants
function math:bkm/define/const

# Load configuration
function math:bkm/config
execute if score ::math::bkm::const BKM_LOG_ITERATIONS > ::math::bkm::const BKM_LOG_MAX_ITERATIONS run scoreboard players operation ::math::bkm::const BKM_LOG_ITERATIONS = ::math::bkm::const BKM_LOG_MAX_ITERATIONS
execute if score ::math::bkm::const BKM_EXP_ITERATIONS > ::math::bkm::const BKM_EXP_MAX_ITERATIONS run scoreboard players operation ::math::bkm::const BKM_EXP_ITERATIONS = ::math::bkm::const BKM_EXP_MAX_ITERATIONS
