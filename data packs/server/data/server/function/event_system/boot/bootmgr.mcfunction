#
# server:event_system/boot/bootmgr
#

# Reset state
scoreboard players set ::server::event_system player_join_count 0
scoreboard players operation ::server::event_system first_player_joined = ::const FALSE
scoreboard players set ::server::event_system player_leave_count 0
