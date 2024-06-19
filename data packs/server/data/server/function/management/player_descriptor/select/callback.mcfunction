#
# server:management/player_descriptor/select/callback
#

# Push the element onto the stack
scoreboard players operation ::in stack_score = ::server::management success
function stdmodulesystem:stack/push_score

$function $(callback)

# Pop the element from the stack
function stdmodulesystem:stack/pop_score
scoreboard players operation ::server::management success = ::out stack_score
