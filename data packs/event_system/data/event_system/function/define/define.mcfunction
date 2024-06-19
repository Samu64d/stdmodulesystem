#
# event_system:define/define
#

# Declare module
#define score_holder ::event_system
#define score_holder ::event_system::const

# Declare storage
#define storage event_system:static
#define storage event_system:volatile
#define storage event_system:data

# Define variables
scoreboard objectives add success dummy

scoreboard objectives add event_list_length dummy
scoreboard objectives add fired_event_count dummy
