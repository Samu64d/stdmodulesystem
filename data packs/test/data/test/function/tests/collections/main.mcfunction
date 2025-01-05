#
# test:tests/collections/main
#

#> Array

# Append
data modify storage io: array set value ["hello"]
data modify storage io: element set value "world"
function collections:array/append

# Empty
data modify storage io: array set value ["hello"]
function collections:array/empty

# Fill
scoreboard players set ::in size 3
data modify storage io: array set value []
data modify storage io: element set value "world"
function collections:array/fill

# Fillzero
scoreboard players set ::in size 6
data modify storage io: array set value []
function collections:array/fillzero

# Get index
scoreboard players set ::in index 2
data modify storage io: array set value ["hello", "world", "hello world"]
execute store result score ::test value run function collections:array/get_index

# Get size
data modify storage io: array set value ["hello", "world", "hello world"]
execute store result score ::test value run function collections:array/get_size

# Insert index
scoreboard players set ::in index 1
data modify storage io: array set value ["hello", "hello world"]
data modify storage io: element set value "world"
execute store result score ::test value run function collections:array/insert_index

# New
function collections:array/new

# Prepend
data modify storage io: array set value ["world"]
data modify storage io: element set value "hello"
function collections:array/prepend

# Remove index
scoreboard players set ::in index 1
data modify storage io: array set value ["hello", "", "hello world"]
execute store result score ::test value run function collections:array/remove_index

# Set index
scoreboard players set ::in index 2
data modify storage io: array set value ["hello", "", "hello world"]
data modify storage io: element set value "world"
execute store result score ::test value run function collections:array/set_index

#> Array2d

# Fill
data modify storage io: array set value [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
data modify storage io: element set value 1
function collections:array2d/fill

# Fillzero
data modify storage io: array set value [[1, 1, 1], [1, 1, 1], [1, 1, 1]]
function collections:array2d/fillzero

# Get point
scoreboard players set ::in x 2
scoreboard players set ::in y 0
data modify storage io: array set value [["world", "hello", "world hello"], ["world", "hello world", "world"], ["world hello", "world", "world"]]
execute store result score ::test value run function collections:array2d/get_point

# New
scoreboard players set ::in x_size 6
scoreboard players set ::in y_size 6
function collections:array2d/new

# Set point
scoreboard players set ::in x 1
scoreboard players set ::in y 1
data modify storage io: array set value [["world", "hello", "world hello"], ["world", "hello world", "world"], ["world hello", "world", "world"]]
data modify storage io: element set value "world world"
execute store result score ::test value run function collections:array2d/set_point

#> Array3d

# Fill
data modify storage io: array set value [[[0, 0], [0, 0]], [[0, 0], [0, 0]], [[0, 0], [0, 0]]]
data modify storage io: element set value 1
function collections:array3d/fill

# Fillzero
data modify storage io: array set value [[[1, 1], [0, 1]], [[1, 1], [1, 1]], [[1, 1], [1, 1]]]
function collections:array3d/fillzero

# Get point
scoreboard players set ::in x 1
scoreboard players set ::in y 0
scoreboard players set ::in z 0
data modify storage io: array set value [[["hello", "world"], ["world", "hello"]], [["world", "hello"], ["world", "hello"]]]
execute store result score ::test value run function collections:array3d/get_point

# New
scoreboard players set ::in x_size 2
scoreboard players set ::in y_size 2
scoreboard players set ::in z_size 4
function collections:array3d/new

# Set point
scoreboard players set ::in x 1
scoreboard players set ::in y 1
scoreboard players set ::in z 0
data modify storage io: array set value [[["hello", "world"], ["world", "hello"]],[["world", "hello"], ["world", "hello"]]]
data modify storage io: element set value "world world"
execute store result score ::test value run function collections:array3d/set_point

#> Iterable map

# Clear
data modify storage io: iterable_map set value {data: {hello: {next_key:"world", value: "world"}, world: {prev_key:"hello", value: "hello"}}, last_key: "world"}
function collections:iterable_map/new

# Count keys
data modify storage io: iterable_map set value {data: {hello: {next_key:"world", value: "world"}, world: {prev_key:"hello", value: "hello"}}, last_key: "world"}
execute store result score ::test value run function collections:iterable_map/count_keys

# For each
data modify storage io: iterable_map set value {data: {hello: {next_key:"world", value: "world"}, world: {prev_key:"hello", value: "hello"}}, last_key: "world"}
data modify storage io: callback set value "test:tests/collections/iterable_map_for_each_callback"
function collections:iterable_map/for_each

# For each key
data modify storage io: iterable_map set value {data: {hello: {next_key:"world", value: "world"}, world: {prev_key:"hello", value: "hello"}}, last_key: "world"}
data modify storage io: callback set value "test:tests/collections/iterable_map_for_each_key_callback"
function collections:iterable_map/for_each_key

# Get key
data modify storage io: iterable_map set value {data: {hello: {next_key:"world", value: "world"}, world: {prev_key:"hello", value: "hello"}}, last_key: "world"}
data modify storage io: key set value "hello"
execute store result score ::test value run function collections:iterable_map/get_key

# Has key
data modify storage io: iterable_map set value {data: {hello: {next_key:"world", value: "world"}, world: {prev_key:"hello", value: "hello"}}, last_key: "world"}
data modify storage io: key set value "hello"
execute store result score ::test value run function collections:iterable_map/has_key

# New
function collections:iterable_map/new

# Remove key
data modify storage io: iterable_map set value {data: {hello: {next_key:"world", value: "world"}, world: {prev_key:"hello", value: "hello"}}, last_key: "world"}
data modify storage io: key set value "hello"
execute store result score ::test value run function collections:iterable_map/remove_key

# Set key
data modify storage io: iterable_map set value {data: {hello: {next_key:"world", value: "world"}, world: {prev_key:"hello", value: "hello"}}, last_key: "world"}
data modify storage io: key set value "hello"
data modify storage io: value set value "hello world"
function collections:iterable_map/set_key

#> List

# Add first unique
data modify storage io: list set value ["hello", "world"]
data modify storage io: element set value "hello"
execute store result score ::test value run function collections:list/add_first_unique

# Add first
data modify storage io: list set value ["world"]
data modify storage io: element set value "hello"
function collections:list/add_first

# Add last unique
data modify storage io: list set value ["hello", "world"]
data modify storage io: element set value "world"
execute store result score ::test value run function collections:list/add_last_unique

# Add last
data modify storage io: list set value ["hello"]
data modify storage io: element set value "world"
function collections:list/add_last

# Concat
data modify storage io: list0 set value ["hello", "world"]
data modify storage io: list1 set value ["hello world", "hello"]
function collections:list/concat

# Contains like
data modify storage io: list set value [{index: 2, string: "hello"}, {index: 2, string: "world"}]
data modify storage io: like_element set value {string: "hello"}
execute store result score ::test value run function collections:list/contains_like

# Contains
data modify storage io: list set value ["hello", "world", "hello world"]
data modify storage io: element set value "hello"
execute store result score ::test value run function collections:list/contains

# Count like
data modify storage io: list set value [{index: 2, string: "hello"}, {index: 2, string: "world"}]
data modify storage io: like_element set value {index: 2}
execute store result score ::test value run function collections:list/count_like

# Count
data modify storage io: list set value ["hello", "hello", "world", "hello", "hello world"]
data modify storage io: element set value "hello"
execute store result score ::test value run function collections:list/count

# Empty
data modify storage io: list set value ["hello", "world"]
function collections:list/empty

# For each reverse
data modify storage io: list set value [0, 1, 2]
data modify storage io: callback set value "test:tests/collections/list_for_each_reverse_callback"
function collections:list/for_each_reverse

# For each update
data modify storage io: list set value [0, 1, 2]
data modify storage io: callback set value "test:tests/collections/list_for_each_update_callback"
function collections:list/for_each_update

# For each
data modify storage io: list set value ["hello", "world", "hello world"]
data modify storage io: callback set value "test:tests/collections/list_for_each_callback"
function collections:list/for_each

# Get first like
data modify storage io: list set value [{index: 3, string: "hello"}, {index: 2, string: "world"}, {index: 2, string: "hello world"}]
data modify storage io: like_element set value {index: 3}
execute store result score ::test value run function collections:list/get_first_like

# Get first on match
data modify storage io: list set value [0, 3, 2, 4, 5]
data modify storage io: callback set value "test:tests/collections/list_get_first_on_match_callback"
execute store result score ::test value run function collections:list/get_first_on_match

# Get first
data modify storage io: list set value ["hello", "world", "hello world"]
execute store result score ::test value run function collections:list/get_first

# Get last
data modify storage io: list set value ["hello", "world", "hello world"]
execute store result score ::test value run function collections:list/get_last

# Get length
data modify storage io: list set value ["hello", "world"]
execute store result score ::test value run function collections:list/get_length

# Get like
data modify storage io: list set value [{index: 3, string: "hello"}, {index: 2, string: "world"}, {index: 2, string: "hello world"}]
data modify storage io: like_element set value {index: 2}
execute store result score ::test value run function collections:list/get_like

# Get on match
data modify storage io: list set value [0, 1, 2, 0, 1]
data modify storage io: callback set value "test:tests/collections/list_get_on_match_callback"
execute store result score ::test value run function collections:list/get_on_match

# Is empty
data modify storage io: list set value ["hello", "world"]
execute store result score ::test value run function collections:list/is_empty

# Merge all elements
data modify storage io: list set value [{}, {}, {"hello": "world"}]
data modify storage io: element set value {"world": "hello"}
execute store result score ::test value run function collections:list/merge_all_elements

# New
function collections:list/new

# Pick random
data modify storage io: list set value [0, 4, 2, 4, 4]
execute store result score ::test value run function collections:list/pick_random

# Remove first
data modify storage io: list set value ["hello", "world"]
execute store result score ::test value run function collections:list/remove_first

# Remove last
data modify storage io: list set value ["hello", "world"]
execute store result score ::test value run function collections:list/remove_last

# Remove like
data modify storage io: list set value [{index: 3, string: "hello"}, {index: 2, string: "world"}, {index: 2, string: "hello world"}]
data modify storage io: like_element set value {index: 2}
execute store result score ::test value run function collections:list/remove_like

# Remove on match
data modify storage io: list set value [0, 1, 2, 0, 3]
data modify storage io: callback set value "test:tests/collections/list_remove_on_match_callback"
execute store result score ::test value run function collections:list/remove_on_match

# Remove
data modify storage io: list set value [0, 1, 2, 0, 3]
data modify storage io: element set value 0
execute store result score ::test value run function collections:list/remove

# Set all elements
data modify storage io: list set value ["hello", "world", "hello world"]
data modify storage io: element set value "hello"
execute store result score ::test value run function collections:list/set_all_elements

# Update like
data modify storage io: list set value [{index: 3, string: "hello"}, {index: 2, string: "world"}, {index: 2, string: "hello world"}]
data modify storage io: like_element set value {index: 2}
data modify storage io: element set value {index: 4, string: "hello"}
execute store result score ::test value run function collections:list/update_like

# Update on match
data modify storage io: list set value [0, 1, 2, 0, 3]
data modify storage io: element set value 5
data modify storage io: callback set value "test:tests/collections/list_update_on_match_callback"
execute store result score ::test value run function collections:list/update_on_match

# Update
data modify storage io: list set value [1, 1, 2, 4, 1]
data modify storage io: element0 set value 1
data modify storage io: element1 set value 10
execute store result score ::test value run function collections:list/update

#> List multimap

# Clear
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
function collections:list_multimap/clear

# Count keys
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
execute store result score ::test value run function collections:list_multimap/count_keys

# For each key value element
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: callback set value "test:tests/collections/set_for_each_callback"
execute store result score ::test value run function collections:list_multimap/for_each_key_value_element

# Get all from key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
execute store result score ::test value run function collections:list_multimap/get_all_from_key

# Has key not empty
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
execute store result score ::test value run function collections:list_multimap/has_key_not_empty

# Has key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
execute store result score ::test value run function collections:list_multimap/has_key

# New
function collections:list_multimap/new

# Put all in key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
data modify storage io: list set value ["world", "hello world"]
function collections:list_multimap/put_all_in_key

# Put in key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
data modify storage io: value set value "hello world"
function collections:list_multimap/put_in_key

# Remove all from key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
execute store result score ::test value run function collections:list_multimap/remove_all_from_key

# Remove from key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
data modify storage io: value set value "hello"
execute store result score ::test value run function collections:list_multimap/remove_from_key

# Remove key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
execute store result score ::test value run function collections:list_multimap/remove_key

#> Map

# Clear
data modify storage io: map set value {hello: "world", world: "hello"}
function collections:map/new

# Count keys
data modify storage io: map set value {hello: "world", world: "hello"}
execute store result score ::test value run function collections:map/count_keys

# Get key
data modify storage io: map set value {hello: "world", world: "hello"}
data modify storage io: key set value "hello"
function collections:map/get_key

# Has key
data modify storage io: map set value {hello: "world", world: "hello"}
data modify storage io: key set value "hello"
execute store result score ::test value run function collections:map/has_key

# New
function collections:map/new

# Remove key
data modify storage io: map set value {hello: "world", world: "hello"}
data modify storage io: key set value "hello"
execute store result score ::test value run function collections:map/remove_key

# Set key
data modify storage io: map set value {hello: "world", world: "hello"}
data modify storage io: key set value "hello"
data modify storage io: value set value "hello world"
function collections:map/set_key

#> Referenced array

# Append
data modify storage io: array set value ["hello"]
data modify storage io: element set value "world"
data modify storage io: array_ref set value "storage io: array"
data modify storage io: element_ref set value "storage io: element"
function collections:referenced_array/append

# Empty
data modify storage io: array set value ["hello"]
data modify storage io: array_ref set value "storage io: array"
function collections:referenced_array/empty

# Fill
scoreboard players set ::in size 3
data modify storage io: array set value []
data modify storage io: element set value "world"
data modify storage io: array_ref set value "storage io: array"
data modify storage io: element_ref set value "storage io: element"
function collections:referenced_array/fill

# Fillzero
scoreboard players set ::in size 6
data modify storage io: array set value []
data modify storage io: array_ref set value "storage io: array"
function collections:referenced_array/fillzero

# Get index
scoreboard players set ::in index 3
data modify storage io: array set value ["hello", "world", "hello world"]
data modify storage io: array_ref set value "storage io: array"
execute store result score ::test value run function collections:referenced_array/get_index

# Get size
data modify storage io: array set value ["hello", "world", "hello world"]
data modify storage io: array_ref set value "storage io: array"
execute store result score ::test value run function collections:referenced_array/get_size

# Insert index
scoreboard players set ::in index 1
data modify storage io: array set value ["hello", "hello world"]
data modify storage io: element set value "world"
data modify storage io: array_ref set value "storage io: array"
data modify storage io: element_ref set value "storage io: element"
execute store result score ::test value run function collections:referenced_array/insert_index

# New
data modify storage io: array_ref set value "storage io: array"
function collections:referenced_array/new

# Prepend
data modify storage io: array set value ["world"]
data modify storage io: element set value "hello"
data modify storage io: array_ref set value "storage io: array"
data modify storage io: element_ref set value "storage io: element"
function collections:referenced_array/prepend

# Remove index
scoreboard players set ::in index 1
data modify storage io: array set value ["hello", "", "hello world"]
data modify storage io: array_ref set value "storage io: array"
execute store result score ::test value run function collections:referenced_array/remove_index

# Set index
scoreboard players set ::in index 2
data modify storage io: array set value ["hello", "", "hello world"]
data modify storage io: element set value "world"
data modify storage io: array_ref set value "storage io: array"
data modify storage io: element_ref set value "storage io: element"
execute store result score ::test value run function collections:referenced_array/set_index

#> Referenced array2d

# Fill
data modify storage io: array set value [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
data modify storage io: element set value 1
data modify storage io: array_ref set value "storage io: array"
data modify storage io: element_ref set value "storage io: element"
function collections:referenced_array2d/fill

# Fillzero
data modify storage io: array set value [[1, 1, 1], [1, 1, 1], [1, 1, 1]]
data modify storage io: array_ref set value "storage io: array"
function collections:referenced_array2d/fillzero

# Get point
scoreboard players set ::in x 2
scoreboard players set ::in y 0
data modify storage io: array set value [["world", "hello", "world hello"], ["world", "hello world", "world"], ["world hello", "world", "world"]]
data modify storage io: array_ref set value "storage io: array"
execute store result score ::test value run function collections:referenced_array2d/get_point

# New
scoreboard players set ::in x_size 6
scoreboard players set ::in y_size 6
data modify storage io: array_ref set value "storage io: array"
function collections:referenced_array2d/new

# Set point
scoreboard players set ::in x 1
scoreboard players set ::in y 1
data modify storage io: array set value [["world", "hello", "world hello"], ["world", "hello world", "world"], ["world hello", "world", "world"]]
data modify storage io: element set value "world world"
data modify storage io: array_ref set value "storage io: array"
data modify storage io: element_ref set value "storage io: element"
execute store result score ::test value run function collections:referenced_array2d/set_point

#> Referenced array3d

# Fill
data modify storage io: array set value [[[0, 0], [0, 0]], [[0, 0], [0, 0]], [[0, 0], [0, 0]]]
data modify storage io: element set value 1
data modify storage io: array_ref set value "storage io: array"
data modify storage io: element_ref set value "storage io: element"
function collections:referenced_array3d/fill

# Fillzero
data modify storage io: array set value [[[1, 1], [0, 1]], [[1, 1], [1, 1]], [[1, 1], [1, 1]]]
data modify storage io: array_ref set value "storage io: array"
function collections:referenced_array3d/fillzero

# Get point
scoreboard players set ::in x 1
scoreboard players set ::in y 0
scoreboard players set ::in z 0
data modify storage io: array set value [[["hello", "world"], ["world", "hello"]], [["world", "hello"], ["world", "hello"]]]
data modify storage io: array_ref set value "storage io: array"
execute store result score ::test value run function collections:referenced_array3d/get_point

# New
scoreboard players set ::in x_size 2
scoreboard players set ::in y_size 2
scoreboard players set ::in z_size 4
data modify storage io: array_ref set value "storage io: array"
function collections:referenced_array3d/new

# Set point
scoreboard players set ::in x 1
scoreboard players set ::in y 1
scoreboard players set ::in z 0
data modify storage io: array set value [[["hello", "world"], ["world", "hello"]],[["world", "hello"], ["world", "hello"]]]
data modify storage io: element set value "world world"
data modify storage io: array_ref set value "storage io: array"
data modify storage io: element_ref set value "storage io: element"
execute store result score ::test value run function collections:referenced_array3d/set_point

#> Referenced iterable map

# Clear
data modify storage io: iterable_map set value {data: {hello: {next_key:"world", value: "world"}, world: {prev_key:"hello", value: "hello"}}, last_key: "world"}
data modify storage io: iterable_map_ref set value "storage io: iterable_map"
function collections:referenced_iterable_map/new

# Count keys
data modify storage io: iterable_map set value {data: {hello: {next_key:"world", value: "world"}, world: {prev_key:"hello", value: "hello"}}, last_key: "world"}
data modify storage io: iterable_map_ref set value "storage io: iterable_map"
execute store result score ::test value run function collections:referenced_iterable_map/count_keys

# For each
data modify storage io: iterable_map set value {data: {hello: {next_key:"world", value: "world"}, world: {prev_key:"hello", value: "hello"}}, last_key: "world"}
data modify storage io: iterable_map_ref set value "storage io: iterable_map"
data modify storage io: callback set value "test:tests/collections/iterable_map_for_each_callback"
function collections:referenced_iterable_map/for_each

# For each key
data modify storage io: iterable_map set value {data: {hello: {next_key:"world", value: "world"}, world: {prev_key:"hello", value: "hello"}}, last_key: "world"}
data modify storage io: iterable_map_ref set value "storage io: iterable_map"
data modify storage io: callback set value "test:tests/collections/iterable_map_for_each_key_callback"
function collections:referenced_iterable_map/for_each_key

# Get key reference
data modify storage io: iterable_map set value {data: {hello: {next_key:"world", value: "world"}, world: {prev_key:"hello", value: "hello"}}, last_key: "world"}
data modify storage io: key set value "hello"
data modify storage io: iterable_map_ref set value "storage io: iterable_map"
execute store result score ::test value run function collections:referenced_iterable_map/get_key_reference

# Get key
data modify storage io: iterable_map set value {data: {hello: {next_key:"world", value: "world"}, world: {prev_key:"hello", value: "hello"}}, last_key: "world"}
data modify storage io: key set value "hello"
data modify storage io: iterable_map_ref set value "storage io: iterable_map"
execute store result score ::test value run function collections:referenced_iterable_map/get_key

# Has key
data modify storage io: iterable_map set value {data: {hello: {next_key:"world", value: "world"}, world: {prev_key:"hello", value: "hello"}}, last_key: "world"}
data modify storage io: key set value "hello"
data modify storage io: map_ref set value "storage io: iterable_map"
execute store result score ::test value run function collections:referenced_iterable_map/has_key

# New
data modify storage io: iterable_map_ref set value "storage io: iterable_map"
function collections:referenced_iterable_map/new

# Remove key
data modify storage io: iterable_map set value {data: {hello: {next_key:"world", value: "world"}, world: {prev_key:"hello", value: "hello"}}, last_key: "world"}
data modify storage io: key set value "hello"
data modify storage io: iterable_map_ref set value "storage io: iterable_map"
execute store result score ::test value run function collections:referenced_iterable_map/remove_key

# Set key
data modify storage io: iterable_map set value {data: {hello: {next_key:"world", value: "world"}, world: {prev_key:"hello", value: "hello"}}, last_key: "world"}
data modify storage io: key set value "hello"
data modify storage io: value set value "hello world"
data modify storage io: iterable_map_ref set value "storage io: iterable_map"
data modify storage io: value_ref set value "storage io: value"
function collections:referenced_iterable_map/set_key

#> Referecned list

# Add first unique
data modify storage io: list set value ["hello", "world"]
data modify storage io: element set value "hello"
data modify storage io: list_ref set value "storage io: list"
data modify storage io: element_ref set value "storage io: element"
execute store result score ::test value run function collections:referenced_list/add_first_unique

# Add first
data modify storage io: list set value ["world"]
data modify storage io: element set value "hello"
data modify storage io: list_ref set value "storage io: list"
data modify storage io: element_ref set value "storage io: element"
function collections:referenced_list/add_first

# Add last unique
data modify storage io: list set value ["hello", "world"]
data modify storage io: element set value "world2"
data modify storage io: list_ref set value "storage io: list"
data modify storage io: element_ref set value "storage io: element"
execute store result score ::test value run function collections:referenced_list/add_last_unique

# Add last
data modify storage io: list set value ["hello"]
data modify storage io: element set value "world"
data modify storage io: list_ref set value "storage io: list"
data modify storage io: element_ref set value "storage io: element"
function collections:referenced_list/add_last

# Concat
data modify storage io: list0 set value ["hello", "world"]
data modify storage io: list1 set value ["hello world", "hello"]
data modify storage io: list0_ref set value "storage io: list0"
data modify storage io: list1_ref set value "storage io: list1"
function collections:referenced_list/concat

# Contains like
data modify storage io: list set value [{index: 2, string: "hello"}, {index: 2, string: "world"}]
data modify storage io: like_element set value {string: "hello2"}
data modify storage io: list_ref set value "storage io: list"
execute store result score ::test value run function collections:referenced_list/contains_like

# Contains
data modify storage io: list set value ["hello", "world", "hello world"]
data modify storage io: element set value "hello"
data modify storage io: list_ref set value "storage io: list"
data modify storage io: element_ref set value "storage io: element"
execute store result score ::test value run function collections:referenced_list/contains

# Count like
data modify storage io: list set value [{index: 2, string: "hello"}, {index: 2, string: "world"}]
data modify storage io: like_element set value {index: 2}
data modify storage io: list_ref set value "storage io: list"
execute store result score ::test value run function collections:referenced_list/count_like

# Count
data modify storage io: list set value ["hello", "hello", "world", "hello", "hello world"]
data modify storage io: element set value "hello"
data modify storage io: list_ref set value "storage io: list"
data modify storage io: element_ref set value "storage io: element"
execute store result score ::test value run function collections:referenced_list/count

# Empty
data modify storage io: list set value ["hello", "world"]
data modify storage io: list_ref set value "storage io: list"
function collections:referenced_list/empty

# For each reverse
data modify storage io: list set value [0, 1, 2]
data modify storage io: list_ref set value "storage io: list"
data modify storage io: callback set value "test:tests/collections/list_for_each_reverse_callback"
function collections:referenced_list/for_each_reverse

# For each update
data modify storage io: list set value [0, 1, 2]
data modify storage io: list_ref set value "storage io: list"
data modify storage io: callback set value "test:tests/collections/list_for_each_update_callback"
function collections:referenced_list/for_each_update

# For each
data modify storage io: list set value ["hello", "world", "hello world"]
data modify storage io: list_ref set value "storage io: list"
data modify storage io: callback set value "test:tests/collections/list_for_each_callback"
function collections:referenced_list/for_each

# Get first like
data modify storage io: list set value [{index: 3, string: "hello"}, {index: 2, string: "world"}, {index: 2, string: "hello world"}]
data modify storage io: like_element set value {index: 3}
data modify storage io: list_ref set value "storage io: list"
execute store result score ::test value run function collections:referenced_list/get_first_like

# Get first on match
data modify storage io: list set value [0, 3, 2, 4, 5]
data modify storage io: list_ref set value "storage io: list"
data modify storage io: callback set value "test:tests/collections/list_get_first_on_match_callback"
execute store result score ::test value run function collections:referenced_list/get_first_on_match

# Get first
data modify storage io: list set value ["hello", "world", "hello world"]
data modify storage io: list_ref set value "storage io: list"
execute store result score ::test value run function collections:referenced_list/get_first

# Get last
data modify storage io: list set value ["hello", "world", "hello world"]
data modify storage io: list_ref set value "storage io: list"
execute store result score ::test value run function collections:referenced_list/get_last

# Get length
data modify storage io: list set value ["hello", "world"]
data modify storage io: list_ref set value "storage io: list"
execute store result score ::test value run function collections:referenced_list/get_length

# Get like
data modify storage io: list set value [{index: 3, string: "hello"}, {index: 2, string: "world"}, {index: 2, string: "hello world"}]
data modify storage io: like_element set value {index: 2}
data modify storage io: list_ref set value "storage io: list"
execute store result score ::test value run function collections:referenced_list/get_like

# Get on match
data modify storage io: list set value [0, 1, 2, 0, 1]
data modify storage io: list_ref set value "storage io: list"
data modify storage io: callback set value "test:tests/collections/list_get_on_match_callback"
execute store result score ::test value run function collections:referenced_list/get_on_match

# Is empty
data modify storage io: list set value ["hello", "world"]
data modify storage io: list_ref set value "storage io: list"
execute store result score ::test value run function collections:referenced_list/is_empty

# Merge all elements
data modify storage io: list set value [{}, {}, {"hello": "world"}]
data modify storage io: element set value {"world": "hello"}
data modify storage io: list_ref set value "storage io: list"
data modify storage io: element_ref set value "storage io: element"
execute store result score ::test value run function collections:referenced_list/merge_all_elements

# New
data modify storage io: list_ref set value "storage io: list"
function collections:referenced_list/new

# Pick random
data modify storage io: list set value [0, 4, 2, 4, 4]
execute store result score ::test value run function collections:referenced_list/pick_random

# Remove first
data modify storage io: list set value ["hello", "world"]
data modify storage io: list_ref set value "storage io: list"
execute store result score ::test value run function collections:referenced_list/remove_first

# Remove last
data modify storage io: list set value ["hello", "world"]
data modify storage io: list_ref set value "storage io: list"
execute store result score ::test value run function collections:referenced_list/remove_last

# Remove like
data modify storage io: list set value [{index: 3, string: "hello"}, {index: 2, string: "world"}, {index: 2, string: "hello world"}]
data modify storage io: like_element set value {index: 2}
data modify storage io: list_ref set value "storage io: list"
execute store result score ::test value run function collections:referenced_list/remove_like

# Remove on match
data modify storage io: list set value [0, 1, 2, 0, 3]
data modify storage io: list_ref set value "storage io: list"
data modify storage io: callback set value "test:tests/collections/list_remove_on_match_callback"
execute store result score ::test value run function collections:referenced_list/remove_on_match

# Remove
data modify storage io: list set value [0, 1, 2, 0, 3]
data modify storage io: element set value 3
data modify storage io: list_ref set value "storage io: list"
data modify storage io: element_ref set value "storage io: element"
execute store result score ::test value run function collections:referenced_list/remove

# Set all elements
data modify storage io: list set value ["hello", "world", "hello world"]
data modify storage io: element set value "hello"
data modify storage io: list_ref set value "storage io: list"
data modify storage io: element_ref set value "storage io: element"
execute store result score ::test value run function collections:referenced_list/set_all_elements

# Update like
data modify storage io: list set value [{index: 3, string: "hello"}, {index: 2, string: "world"}, {index: 2, string: "hello world"}]
data modify storage io: like_element set value {index: 2}
data modify storage io: element set value {index: 4, string: "hello"}
data modify storage io: list_ref set value "storage io: list"
data modify storage io: element_ref set value "storage io: element"
execute store result score ::test value run function collections:referenced_list/update_like

# Update on match
data modify storage io: list set value [0, 1, 2, 0, 3]
data modify storage io: element set value 5
data modify storage io: list_ref set value "storage io: list"
data modify storage io: element_ref set value "storage io: element"
data modify storage io: callback set value "test:tests/collections/list_update_on_match_callback"
execute store result score ::test value run function collections:referenced_list/update_on_match

# Update
data modify storage io: list set value [1, 1, 2, 4, 1]
data modify storage io: element0 set value 1
data modify storage io: element1 set value 10
data modify storage io: list_ref set value "storage io: list"
data modify storage io: element0_ref set value "storage io: element0"
data modify storage io: element1_ref set value "storage io: element1"
execute store result score ::test value run function collections:referenced_list/update

#> Referenced list multimap

# Clear
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: map_ref set value "storage io: map"
function collections:referenced_list_multimap/clear

# Count keys
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: map_ref set value "storage io: map"
execute store result score ::test value run function collections:referenced_list_multimap/count_keys

# For each key value element
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: map_ref set value "storage io: map"
data modify storage io: callback set value "test:tests/collections/list_for_each_callback"
execute store result score ::test value run function collections:referenced_list_multimap/for_each_key_value_element

# Get all from key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
data modify storage io: map_ref set value "storage io: map"
execute store result score ::test value run function collections:referenced_list_multimap/get_all_from_key

# Has key not empty
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
data modify storage io: map_ref set value "storage io: map"
execute store result score ::test value run function collections:referenced_list_multimap/has_key_not_empty

# Has key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
data modify storage io: map_ref set value "storage io: map"
execute store result score ::test value run function collections:referenced_list_multimap/has_key

# New
data modify storage io: map_ref set value "storage io: map"
function collections:referenced_list_multimap/new

# Put all in key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
data modify storage io: list set value ["world", "hello world"]
data modify storage io: map_ref set value "storage io: map"
data modify storage io: list_ref set value "storage io: list"
function collections:referenced_list_multimap/put_all_in_key

# Put in key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
data modify storage io: value set value "hello world"
data modify storage io: map_ref set value "storage io: map"
data modify storage io: value_ref set value "storage io: value"
function collections:referenced_list_multimap/put_in_key

# Remove all from key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
data modify storage io: map_ref set value "storage io: map"
execute store result score ::test value run function collections:referenced_list_multimap/remove_all_from_key

# Remove from key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
data modify storage io: value set value "hello"
data modify storage io: map_ref set value "storage io: map"
data modify storage io: value_ref set value "storage io: value"
execute store result score ::test value run function collections:referenced_list_multimap/remove_from_key

# Remove key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
data modify storage io: map_ref set value "storage io: map"
execute store result score ::test value run function collections:referenced_list_multimap/remove_key

#> Referenced map

# Clear
data modify storage io: map set value {hello: "world", world: "hello"}
data modify storage io: map_ref set value "storage io: map"
function collections:referenced_map/new

# Count keys
data modify storage io: map set value {hello: "world", world: "hello"}
data modify storage io: map_ref set value "storage io: map"
execute store result score ::test value run function collections:referenced_map/count_keys

# Get key reference
data modify storage io: map set value {hello: "world", world: "hello"}
data modify storage io: key set value "hello"
data modify storage io: map_ref set value "storage io: map"
execute store result score ::test value run function collections:referenced_map/get_key_reference

# Get key
data modify storage io: map set value {hello: "world3", world: "hello"}
data modify storage io: key set value "hello"
data modify storage io: map_ref set value "storage io: map"
execute store result score ::test value run function collections:referenced_map/get_key

# Has key
data modify storage io: map set value {hello: "world", world: "hello"}
data modify storage io: key set value "hello"
data modify storage io: map_ref set value "storage io: map"
execute store result score ::test value run function collections:referenced_map/has_key

# New
data modify storage io: map_ref set value "storage io: map"
function collections:referenced_map/new

# Remove key
data modify storage io: map set value {hello: "world", world: "hello"}
data modify storage io: key set value "hello"
data modify storage io: map_ref set value "storage io: map"
execute store result score ::test value run function collections:referenced_map/remove_key

# Set key
data modify storage io: map set value {hello: "world", world: "hello"}
data modify storage io: key set value "hello"
data modify storage io: value set value "hello world"
data modify storage io: map_ref set value "storage io: map"
data modify storage io: value_ref set value "storage io: value"
function collections:referenced_map/set_key

#> Referenced set

# Add
data modify storage io: set set value ["world"]
data modify storage io: element set value "hello"
data modify storage io: set_ref set value "storage io: set"
data modify storage io: element_ref set value "storage io: element"
execute store result score ::test value run function collections:referenced_set/add

# Contains
data modify storage io: set set value ["hello", "world", "hello world"]
data modify storage io: element set value "hello"
data modify storage io: set_ref set value "storage io: set"
data modify storage io: element_ref set value "storage io: element"
execute store result score ::test value run function collections:referenced_set/contains

# Empty
data modify storage io: set set value ["hello", "world"]
data modify storage io: set_ref set value "storage io: set"
function collections:referenced_set/empty

# For each
data modify storage io: set set value ["hello", "world", "hello world"]
data modify storage io: set_ref set value "storage io: set"
data modify storage io: callback set value "test:tests/collections/set_for_each_callback"
function collections:referenced_set/for_each

# Get size
data modify storage io: set set value ["hello", "world"]
data modify storage io: set_ref set value "storage io: set"
execute store result score ::test value run function collections:referenced_set/get_size

# Is empty
data modify storage io: set set value ["hello", "world"]
data modify storage io: set_ref set value "storage io: set"
execute store result score ::test value run function collections:referenced_set/is_empty

# New
data modify storage io: set_ref set value "storage io: set"
function collections:referenced_set/new

# Remove
data modify storage io: set set value [0, 1, 2, 3]
data modify storage io: element set value 1
data modify storage io: set_ref set value "storage io: set"
data modify storage io: element_ref set value "storage io: element"
execute store result score ::test value run function collections:referenced_set/remove

#> Referenced set multimap

# Clear
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: map_ref set value "storage io: map"
function collections:referenced_set_multimap/clear

# Count keys
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: map_ref set value "storage io: map"
execute store result score ::test value run function collections:referenced_set_multimap/count_keys

# For each key value element
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: map_ref set value "storage io: map"
data modify storage io: callback set value "test:tests/collections/set_for_each_callback"
execute store result score ::test value run function collections:referenced_set_multimap/for_each_key_value_element

# Get all from key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
data modify storage io: map_ref set value "storage io: map"
execute store result score ::test value run function collections:referenced_set_multimap/get_all_from_key

# Has key not empty
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
data modify storage io: map_ref set value "storage io: map"
execute store result score ::test value run function collections:referenced_set_multimap/has_key_not_empty

# Has key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
data modify storage io: map_ref set value "storage io: map"
execute store result score ::test value run function collections:referenced_set_multimap/has_key

# New
data modify storage io: map_ref set value "storage io: map"
function collections:referenced_set_multimap/new

# Put all in key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
data modify storage io: set set value ["world", "hello world"]
data modify storage io: map_ref set value "storage io: map"
data modify storage io: set_ref set value "storage io: set"
function collections:referenced_set_multimap/put_all_in_key

# Put in key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
data modify storage io: value set value "hello world"
data modify storage io: map_ref set value "storage io: map"
data modify storage io: value_ref set value "storage io: value"
function collections:referenced_set_multimap/put_in_key

# Remove all from key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
data modify storage io: map_ref set value "storage io: map"
execute store result score ::test value run function collections:referenced_set_multimap/remove_all_from_key

# Remove from key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
data modify storage io: value set value "hello"
data modify storage io: map_ref set value "storage io: map"
data modify storage io: value_ref set value "storage io: value"
execute store result score ::test value run function collections:referenced_set_multimap/remove_from_key

# Remove key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
data modify storage io: map_ref set value "storage io: map"
execute store result score ::test value run function collections:referenced_set_multimap/remove_key

#> Referenced stack

# Get size
data modify storage io: stack set value ["hello", "world", "hello world"]
data modify storage io: stack_ref set value "storage io: stack"
execute store result score ::test value run function collections:referenced_stack/get_size

# New
data modify storage io: stack_ref set value "storage io: stack"
function collections:referenced_stack/new

# Pop
data modify storage io: stack set value ["hello", "world", "hello world"]
data modify storage io: stack_ref set value "storage io: stack"
function collections:referenced_stack/pop

# Push
data modify storage io: stack set value ["hello", "", "hello world"]
data modify storage io: element set value "world"
data modify storage io: stack_ref set value "storage io: stack"
data modify storage io: element_ref set value "storage io: element"
function collections:referenced_stack/push

#> Set

# Add
data modify storage io: set set value ["world"]
data modify storage io: element set value "hello"
execute store result score ::test value run function collections:set/add

# Contains
data modify storage io: set set value ["hello", "world", "hello world"]
data modify storage io: element set value "hello"
execute store result score ::test value run function collections:set/contains

# Empty
data modify storage io: set set value ["hello", "world"]
function collections:set/empty

# For each
data modify storage io: set set value ["hello", "world", "hello world"]
data modify storage io: callback set value "test:tests/collections/set_for_each_callback"
function collections:set/for_each

# Get size
data modify storage io: set set value ["hello", "world"]
execute store result score ::test value run function collections:set/get_size

# Is empty
data modify storage io: set set value ["hello", "world"]
execute store result score ::test value run function collections:set/is_empty

# New
function collections:set/new

# Remove
data modify storage io: set set value [0, 1, 2, 3]
data modify storage io: element set value 1
execute store result score ::test value run function collections:set/remove

#> Set multimap

# Clear
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
function collections:set_multimap/clear

# Count keys
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
execute store result score ::test value run function collections:set_multimap/count_keys

# For each key value element
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: callback set value "test:tests/collections/set_for_each_callback"
execute store result score ::test value run function collections:set_multimap/for_each_key_value_element

# Get all from key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
execute store result score ::test value run function collections:set_multimap/get_all_from_key

# Has key not empty
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
execute store result score ::test value run function collections:set_multimap/has_key_not_empty

# Has key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
execute store result score ::test value run function collections:set_multimap/has_key

# New
function collections:set_multimap/new

# Put all in key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
data modify storage io: set set value ["world", "hello world"]
function collections:set_multimap/put_all_in_key

# Put in key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
data modify storage io: value set value "hello world"
function collections:set_multimap/put_in_key

# Remove all from key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
execute store result score ::test value run function collections:set_multimap/remove_all_from_key

# Remove from key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
data modify storage io: value set value "hello"
execute store result score ::test value run function collections:set_multimap/remove_from_key

# Remove key
data modify storage io: map set value {hello: ["world"], world: ["hello"]}
data modify storage io: key set value "hello"
execute store result score ::test value run function collections:set_multimap/remove_key

#> Stack

# Get size
data modify storage io: stack set value ["hello", "world", "hello world"]
execute store result score ::test value run function collections:stack/get_size

# New
function collections:stack/new

# Pop
data modify storage io: stack set value ["hello", "world", "hello world"]
function collections:stack/pop

# Push
data modify storage io: stack set value ["hello", "", "hello world"]
data modify storage io: element set value "world"
function collections:stack/push
