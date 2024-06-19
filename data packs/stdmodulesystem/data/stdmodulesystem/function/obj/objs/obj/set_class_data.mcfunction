#
# stdmodulesystem:obj/objs/obj/set_class_data
#

# Class flag
data modify entity @s data.is_class set value true

# Create virtual methods table
function stdmodulesystem:utils/map/new
data modify entity @s data.methods set from storage io: map

# Class constructor
data modify storage io: method set from storage stdmodulesystem:static obj_runtime.CLASS_CONSTRUCTOR_NAME
function stdmodulesystem:obj/objs/obj/set_class_data/get_method_name
data modify storage io: method_path set from storage io: method_name
function stdmodulesystem:obj/objs/obj/add_virtual

# Class updater
data modify storage io: method set from storage stdmodulesystem:static obj_runtime.CLASS_UPDATER_NAME
function stdmodulesystem:obj/objs/obj/set_class_data/get_method_name
data modify storage io: method_path set from storage io: method_name
function stdmodulesystem:obj/objs/obj/add_virtual

# Class destructor
data modify storage io: method set from storage stdmodulesystem:static obj_runtime.CLASS_DESTRUCTOR_NAME
function stdmodulesystem:obj/objs/obj/set_class_data/get_method_name
data modify storage io: method_path set from storage io: method_name
function stdmodulesystem:obj/objs/obj/add_virtual

# Class pointer
data modify entity @s data.pointer set from entity @s UUID

# Class parent
data modify entity @s data.parent set value "NULL"

# Class children
function stdmodulesystem:utils/list/new
data modify entity @s data.children set from storage io: list

# World location
function stdmodulesystem:obj/objs/obj/set_location

# World global location
function stdmodulesystem:obj/objs/obj/set_global_location

# Return pointer
data modify storage io: pointer set from entity @s data.pointer

# Invoke subclass constructor
data modify storage io: method set from storage stdmodulesystem:static obj_runtime.CLASS_CONSTRUCTOR_NAME
function stdmodulesystem:obj/objs/obj/invoke_virtual
