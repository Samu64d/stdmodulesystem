#
# context:define/define
#

# Declare module
#define score_holder ::context
#define score_holder ::context::const

# Define variables
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add executor_type dummy

# Enumeration
function context:define/enum_executor_types
