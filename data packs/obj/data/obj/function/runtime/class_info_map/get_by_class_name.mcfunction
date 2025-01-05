#
# obj:runtime/class_info_map/get_by_class_name
#
# Get a class info object from the class info map
#> Storage
#  @class_name (in): the class name
#  @class_info (out): the class info object
#> Return data
#  boolean flag

data modify storage io: iterable_map_ref set value "storage obj:volatile runtime.class_info_map"
data modify storage io: key set from storage io: class_name
execute store result score ::obj::runtime success run function collections:referenced_iterable_map/get_key
execute if score ::obj::runtime success = ::const TRUE run data modify storage io: class_info set from storage io: value

# Return data
return run scoreboard players get ::obj::runtime success
