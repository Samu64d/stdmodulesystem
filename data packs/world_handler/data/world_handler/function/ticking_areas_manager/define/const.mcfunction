#
# world_handler:ticking_areas_manager/define/const
#

scoreboard objectives add MAX_TICKING_AREA_SIZE dummy

scoreboard objectives add TICKING_AREA_BORDER_SIZE dummy

# Max size of a ticking area
scoreboard players set ::world_handler::ticking_areas_manager::const MAX_TICKING_AREA_SIZE 128

# Tickign area border size
scoreboard players set ::world_handler::ticking_areas_manager::const TICKING_AREA_BORDER_SIZE 2
