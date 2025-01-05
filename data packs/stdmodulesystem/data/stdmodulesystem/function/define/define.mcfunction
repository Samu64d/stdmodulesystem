#
# stdmodulesystem:define/define
#

# Declare module
#define score_holder ::stdmodulesystem
#define score_holder ::stdmodulesystem::const

# Declare storage
#define storage stdmodulesystem:static
#define storage stdmodulesystem:volatile
#define storage stdmodulesystem:data

# Define variables
scoreboard objectives add first_tick dummy
scoreboard objectives add need_reload dummy

# Temporary registries
scoreboard objectives add temp0 dummy
scoreboard objectives add temp1 dummy
scoreboard objectives add temp2 dummy
scoreboard objectives add temp3 dummy
scoreboard objectives add temp4 dummy
scoreboard objectives add temp5 dummy
scoreboard objectives add temp6 dummy
scoreboard objectives add temp7 dummy
scoreboard objectives add temp8 dummy
scoreboard objectives add temp9 dummy
scoreboard objectives add temp10 dummy
scoreboard objectives add temp11 dummy
scoreboard objectives add temp12 dummy
scoreboard objectives add temp13 dummy
scoreboard objectives add temp14 dummy
scoreboard objectives add temp15 dummy

# Other modules definitions
function stdmodulesystem:datapack/define/define
function stdmodulesystem:datapack_manager/define/define
function stdmodulesystem:stack/define/define
function stdmodulesystem:utils/list/define/define
function stdmodulesystem:utils/referenced_list/define/define
function stdmodulesystem:utils/string/define/define
