#
# io:print/fprint
#
# Print a formatted json text component on an output element of a target
#> Scores
#  @output (in): the output
#> Storage
#  @message (in): a string representing a formatted json component message
#> Context
#  @executor (in): the target
#> Return void

# Create list
function collections:list/new
data modify storage io: element set from storage io: message
function collections:list/add_first
data modify storage io: messages set from storage io: list

# Build json components
function io:print/builder/build_formatted

# Print
execute if score ::in output = ::io_::print::enum_print_outputs CHAT run function io:print/outputs/on_chat with storage io:
execute if score ::in output = ::io_::print::enum_print_outputs ACTIONBAR run function io:print/outputs/on_actionbar with storage io:
execute if score ::in output = ::io_::print::enum_print_outputs TITLE run function io:print/outputs/on_title with storage io:
execute if score ::in output = ::io_::print::enum_print_outputs SUBTITLE run function io:print/outputs/on_subtitle with storage io:
