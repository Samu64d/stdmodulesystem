#
# utils:bounding_box2di/are_overlapped
#
# Check if two bounding boxes are overlapped
#> Storage
#  @bounding_box0 (in): the first bounding box to check
#  @bounding_box1 (in): the second bounding box to check
#> Return void

scoreboard players operation ::utils::bounding_box2di are_overlapped = ::const FALSE

# Get first bounding box bounds
data modify storage io: bounding_box set from storage io: bounding_box0
function utils:bounding_box2di/get_bounds
scoreboard players operation ::utils::bounding_box2di x0 = ::out x0
scoreboard players operation ::utils::bounding_box2di z0 = ::out z0
scoreboard players operation ::utils::bounding_box2di x1 = ::out x1
scoreboard players operation ::utils::bounding_box2di z1 = ::out z1

# Get second bounding box bounds
data modify storage io: bounding_box set from storage io: bounding_box1
function utils:bounding_box2di/get_bounds

# Check overlapping using AABB
execute if score ::utils::bounding_box2di x0 <= ::out x1 if score ::utils::bounding_box2di x1 >= ::out x0 if score ::utils::bounding_box2di z0 <= ::out z1 if score ::utils::bounding_box2di z1 >= ::out z0 run scoreboard players operation ::utils::bounding_box2di are_overlapped = ::const TRUE

# Return data
return run scoreboard players get ::utils::bounding_box2di are_overlapped
