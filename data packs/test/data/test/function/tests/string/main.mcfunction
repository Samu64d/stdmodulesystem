#
# test:tests/string/main
#

# Are equal
data modify storage io: string0 set value "hello world"
data modify storage io: string1 set value "hello world"
execute store result score ::test value run function string:are_equal

# Concat
data modify storage io: string0 set value "hello "
data modify storage io: string1 set value "world"
function string:concat

# Contains
data modify storage io: string set value "hello world"
data modify storage io: search set value "hello"
execute store result score ::test value run function string:contains

# Count
data modify storage io: string set value "hello world hello world"
data modify storage io: search set value "hello"
execute store result score ::test value run function string:count

# Find
data modify storage io: string set value "hello world"
data modify storage io: search set value "hello"
execute store result score ::test value run function string:find

# From array
data modify storage io: array set value ["hello", "world"]
data modify storage io: delimiter set value " "
function string:from_array

# From char array
data modify storage io: array set value ["h","e","l","l","o"," ","w","o","r","l","d"]
function string:from_char_array

# Get char
scoreboard players set ::in index 2
data modify storage io: string set value "hello world"
function string:get_char

# Get length
data modify storage io: string set value "hello world"
execute store result score ::test value run function string:get_length

# Pad end
scoreboard players set ::in length 3
data modify storage io: string set value ""
data modify storage io: pad set value "0"
function string:pad_end

# Pad start
scoreboard players set ::in length 3
data modify storage io: string set value "1"
data modify storage io: pad set value "0"
function string:pad_start

# Remove
data modify storage io: string set value "hello world"
data modify storage io: search set value "hello"
function string:remove

# Replace
data modify storage io: string set value "hello world"
data modify storage io: search set value "hello"
data modify storage io: replace set value "world"
function string:replace

# Slice
scoreboard players set ::in index_start 0
scoreboard players set ::in index_end -1
data modify storage io: string set value "hello world"
function string:slice

# Split
data modify storage io: string set value "hello world"
data modify storage io: delimiter set value " "
function string:split

# To char array
data modify storage io: string set value "hello world"
function string:to_char_array

# To lowercase
data modify storage io: string set value "HELLO WORLD"
function string:to_lowercase

# To uppercase
data modify storage io: string set value "hello world"
function string:to_uppercase

# Trim end
data modify storage io: string set value "hello world  "
function string:trim_end

# Trim start
data modify storage io: string set value "  hello world"
function string:trim_start

# Trim
data modify storage io: string set value "  hello world  "
function string:trim
