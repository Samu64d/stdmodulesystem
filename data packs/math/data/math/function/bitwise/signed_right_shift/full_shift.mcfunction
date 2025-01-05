#
# math:bitwise/signed_right_shift/full_shift
#

execute if score ::in value matches ..-2 run scoreboard players set ::in value -1
execute if score ::in value matches 1.. run scoreboard players set ::in value 0
