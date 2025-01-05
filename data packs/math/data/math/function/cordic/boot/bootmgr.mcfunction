#
# math:cordic/boot/bootmgr
#

# Load constants
function math:cordic/define/const

# Load configuration
function math:cordic/config
execute if score ::math::cordic::const CRDC_ITERATIONS > ::math::cordic::const CRDC_MAX_ITERATIONS run scoreboard players operation ::math::cordic::const CRDC_ITERATIONS = ::math::cordic::const CRDC_MAX_ITERATIONS

# Set K and KH factors
function math:cordic/boot/set_scale_factors
