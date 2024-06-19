#
# stdmodulesystem:datapack/enable
#
# Enable a datapack by it's uuid
#> Storage
#  @datapack_id (in): datapack id
#> Return data
#  boolean flag

# Get datapack name
function stdmodulesystem:datapack/get_datapack_name

# Enable
return run function stdmodulesystem:datapack/enable/enable with storage io:
