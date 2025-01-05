#
# nmath:define/define
#

# Declare module
#define score_holder ::nmath
#define score_holder ::nmath::const

# Declare storage
#define storage nmath:static
#define storage nmath:volatile
#define storage nmath:data

# Define variables
scoreboard objectives add r dummy
scoreboard objectives add r_x dummy
scoreboard objectives add r_z dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add rsinrx dummy

# Other modules definitions
function nmath:vector2d/define/define
function nmath:vector2f/define/define
function nmath:vector3d/define/define
function nmath:vector3f/define/define
