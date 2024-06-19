#
# server:level/define/define
#

# Declare module
#define score_holder ::server::level
#define score_holder ::server::level::const

# Define variables
scoreboard objectives add level dummy
scoreboard objectives add value dummy

# Enumeration
function server:level/define/enum_difficulties
