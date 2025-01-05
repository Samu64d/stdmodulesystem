#
# io:print/fprintc
#
# Print a formatted json text component on chat of a target
#> Storage
#  @message (in): a string representing a formatted json component message
#> Context
#  @executor (in): the target
#> Return void

scoreboard players operation ::in output = ::io_::print::enum_print_outputs CHAT
function io:print/fprint
