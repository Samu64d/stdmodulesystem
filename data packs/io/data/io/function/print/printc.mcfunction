#
# io:print/printc
#
# Print a text message on chat of a target
#> Storage
#  @message (in): the text message
#> Context
#  @executor (in): the target
#> Return void

scoreboard players operation ::in output = ::io_::print::enum_print_outputs CHAT
function io:print/print
