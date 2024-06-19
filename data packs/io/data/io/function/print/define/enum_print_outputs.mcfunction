#
# io:print/define/enum_print_outputs
#

#define score_holder ::io_::print::enum_print_outputs

scoreboard objectives add CHAT dummy
scoreboard objectives add ACTIONBAR dummy
scoreboard objectives add TITLE dummy
scoreboard objectives add SUBTITLE dummy

scoreboard players set ::io_::print::enum_print_outputs CHAT 0
scoreboard players set ::io_::print::enum_print_outputs ACTIONBAR 1
scoreboard players set ::io_::print::enum_print_outputs TITLE 2
scoreboard players set ::io_::print::enum_print_outputs SUBTITLE 3
