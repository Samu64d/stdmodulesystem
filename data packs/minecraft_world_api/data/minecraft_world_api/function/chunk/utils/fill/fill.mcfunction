#
# minecraft_world_api:chunk/utils/fill/fill
#

$execute in $(dimension) store result score ::minecraft_world_api::chunk count run fill $(x0) $(y0) $(z0) $(x1) $(y1) $(z1) $(name) replace
return run execute if score ::minecraft_world_api::chunk count matches 1..
