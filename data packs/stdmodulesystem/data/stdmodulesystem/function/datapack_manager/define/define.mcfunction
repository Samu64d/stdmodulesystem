#
# stdmodulesystem:datapack_manager/define/define
#

# Declare module
#define score_holder ::stdmodulesystem::datapack_manager
#define score_holder ::stdmodulesystem::datapack_manager::const

# Define variables
scoreboard objectives add status dummy

scoreboard objectives add success dummy

scoreboard objectives add check_success dummy
scoreboard objectives add datapack_version dummy
scoreboard objectives add dependency_version dummy
scoreboard objectives add missing_dependencies_found dummy

# Enumeration
function stdmodulesystem:datapack_manager/define/enum_available_datapack_status
