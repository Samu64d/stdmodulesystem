#
# stdmodulesystem:datapack/get_datapack_name/get_name_for_custom
#

data modify storage io: string0 set from storage stdmodulesystem:static datapack.DATAPACK_SUFFIX
data modify storage io: string1 set from storage io: datapack_id
function stdmodulesystem:utils/string/concat
data modify storage io: datapack_name set from storage io: string
