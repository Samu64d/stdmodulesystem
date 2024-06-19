#
# stdmodulesystem:obj/obj_runtime/fix_render_issue
#

# See MC-80975 https://bugs.mojang.com/browse/MC-80975?jql=text%20~%20%22pose%20armor%20stand%22
data merge entity @s {Rotation:[0.01f], Pose:{RightArm:[0.01f, 0.01f, 0.01f]}}
execute at @s run tp @s ~000000000.1 ~ ~
