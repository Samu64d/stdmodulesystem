#
# stdmodulesystem:boot/bootmgr
#

# Set gamerules
gamerule maxCommandChainLength 2147483647
gamerule maxCommandForkCount 2147483647

# Define
function stdmodulesystem:define/system_define
function stdmodulesystem:define/define

# Constants
function stdmodulesystem:define/const

# Set first tick tag
scoreboard players operation ::stdmodulesystem first_tick = ::const TRUE

# Initialize stack
function stdmodulesystem:stack/internal/initialize

# Initialize cache
function stdmodulesystem:cache/set_static

# Object runtime
function stdmodulesystem:obj/obj_runtime/boot/bootmgr

# Datapack manager
function stdmodulesystem:datapack_manager/boot/bootmgr
