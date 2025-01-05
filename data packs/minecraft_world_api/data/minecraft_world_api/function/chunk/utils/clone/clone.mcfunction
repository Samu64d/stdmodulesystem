#
# minecraft_world_api:chunk/utils/clone/clone
#

$execute store result score ::minecraft_world_api::chunk count run clone from $(dimension0) $(x0) $(y0) $(z0) $(x1) $(y1) $(z1) to $(dimension1) $(x2) $(y0) $(z2) replace force
return run execute if score ::minecraft_world_api::chunk count matches 1..
