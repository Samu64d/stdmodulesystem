#
# io:print/printlc
#
# Print a list of text messages on chat of a target
#> Storage
#  @messages (in): the text message list
#> Context
#  @executor (in): the target
#> Return void

scoreboard players operation ::in output = ::io_::print::enum_print_outputs CHAT
function io:print/printl
