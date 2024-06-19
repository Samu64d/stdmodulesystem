#
# stdmodulesystem:datapack/disable
#
# Disable a datapack by it's uuid
#> Storage
#  @datapack_id (in): datapack id
#> Return data
#  boolean flag

# Get datapack name
function stdmodulesystem:datapack/get_datapack_name

# Disable
return run function stdmodulesystem:datapack/disable/disable with storage io:
