#
# io:print/fprintlc
#
# Print a list of formatted json text components on chat of a target
#> Storage
#  @messages (in): a list of string representing a formatted json component message
#> Context
#  @executor (in): the target
#> Return void

scoreboard players operation ::in output = ::io_::print::enum_print_outputs CHAT
function io:print/fprintl
