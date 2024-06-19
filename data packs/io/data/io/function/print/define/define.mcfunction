#
# io:print/define/define
#

# Declare module
#define score_holder ::io_::print
#define score_holder ::io_::print::const

# Define variables
scoreboard objectives add output dummy
scoreboard objectives add is_first dummy

# Enumeration
function io:print/define/enum_print_outputs
