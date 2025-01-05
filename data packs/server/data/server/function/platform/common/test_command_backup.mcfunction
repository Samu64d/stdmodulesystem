#
# server:platform/common/test_command_backup
#

$execute store result score ::server::platform success run $(command)
$execute if score ::server::platform success = ::const TRUE run $(command_backup)
return 1
