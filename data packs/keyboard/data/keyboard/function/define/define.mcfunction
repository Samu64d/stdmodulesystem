#
# keyboard:define/define
#

# Declare module
#define score_holder ::keyboard
#define score_holder ::keyboard::const

# Declare storage
#define storage keyboard:static
#define storage keyboard:volatile
#define storage keyboard:data

# Define variables

scoreboard objectives add pressed_time dummy
scoreboard objectives add released_time dummy
scoreboard objectives add success dummy

# Other modules definitions
