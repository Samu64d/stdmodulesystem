#
# stdmodulesystem:obj/obj_runtime/exists
#
# Check if an object exists
#> Storage
#  @pointer (in): the pointer
#> Return data
#  boolean flag

scoreboard players operation ::stdmodulesystem::obj_runtime exists = ::const FALSE
function stdmodulesystem:obj/obj_runtime/exists/exists with storage io:
return run scoreboard players get ::stdmodulesystem::obj_runtime exists
