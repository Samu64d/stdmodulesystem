#
# stdmodulesystem:datapack/get_datapack_name
#
# Get a datapack name from a datapack id
#> Storage
#  @datapack_id (in): datapack id
#  @datapack_name (out): datapack name
#> Return void

# Check for vanilla datapack
data modify storage io: string0 set from storage stdmodulesystem:static datapack.VANILLA_DATAPACK_ID
data modify storage io: string1 set from storage io: datapack_id
execute store result score ::stdmodulesystem::datapack temp0 run function stdmodulesystem:utils/string/are_equal
execute if score ::stdmodulesystem::datapack temp0 = ::const TRUE run data modify storage io: datapack_name set from storage stdmodulesystem:static datapack.VANILLA_DATAPACK_NAME
execute if score ::stdmodulesystem::datapack temp0 = ::const FALSE run function stdmodulesystem:datapack/get_datapack_name/get_name_for_custom
