#
# test:tests/io/main
#

#> Print

# Fprint
scoreboard players operation ::in output = ::io_::print::enum_print_outputs CHAT
data modify storage io: message set value '{"color":"yellow", "text":"hello world"}'
function io:print/fprint

# Fprintc
data modify storage io: message set value "{'color':'yellow', 'text':'hello world'}"
function io:print/fprintc

# Fprintl
scoreboard players operation ::in output = ::io_::print::enum_print_outputs CHAT
data modify storage io: messages set value ["{'color':'yellow', 'text':'hello'}","{'color':'red', 'text':' world'}"]
function io:print/fprintl

# Fprintlc
data modify storage io: messages set value ["{'color':'yellow', 'text':'hello'}","{'color':'red', 'text':' world'}"]
function io:print/fprintlc

# Print
scoreboard players operation ::in output = ::io_::print::enum_print_outputs CHAT
data modify storage io: message set value "hello world"
function io:print/print

# Printc
data modify storage io: message set value "hello world"
function io:print/printc

# Printl
scoreboard players operation ::in output = ::io_::print::enum_print_outputs CHAT
data modify storage io: messages set value ["hello", " world"]
function io:print/printl

# Printlc
data modify storage io: messages set value ["hello", " world"]
function io:print/printlc
