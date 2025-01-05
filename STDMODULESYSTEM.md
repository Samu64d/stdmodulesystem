# STDMODULESYSTEM

Minecarft datapack standard module system.

## What is stdmodulesystem?

**Stdmodulesystem** is a suite of datapacks and a datapack module system aimed to provide a standard Minecraft command/scripting API for creating complex mod-like datapacks. It consist (version 1.0.0) of 25 datapacks/modules for Minecraft 1.21. Each module
encapsulate all the own logic and the communcation between modules is possible thanks either to the global event bus or using direct api call. The api comunication is strictly bounded by a series of convetions for function data passage like input/output parametes, stack frame, events. At each module is associated a manifest with all the dependencies and the version informations.

## What are the standard module and what are they doing?:

- **boilerplate**:
startup datapack to clone for creating new modules.
- **collections**:
a set of common collections like list, map, array, 2d array, 3d arrays.. etc with the "referenced" counterparts (the function input/output values are references to storage objects) for fast operations.
- **context**:
provide function context informations like dimension and position.
- **data_observer**:
observe a nbt data and notify events on changes.
- **event_system**:
one of the most important. Provide an event global bus for communicating beetween modules during events based on subscribers and emitters.
- **io**:
standard io operations for print messages.
- **math**:
standard math libray with over 100 math functions (trigonometrics, inverse trigonometrics, exponentials, logarithmics, hyperbolics, inverse hyperbolics etc...) with all the defined domain supported, fixed point, variable fixed point and floating point support.
- **minecraft_entity_api**:
Minecraft entity api. Create, delete and manipulate world entities.
- **minecraft_regitries**:
Provide Minecraft based registries data.
- **minecraft_world_api**:
Minecraft world api. Functions for modify blocks, get block informations, get and set blockstates, manipulate chunks, get informations about world layout etc...
- **nmath**:
Standard numerical recipes: vector2, vector3, matrix.
- **number**:
Number utility functions: to_fixed, parsing etc...
- **object**:
Object utility functions.
- **random**:
Random number generators including binomials with floating point support.
- **server**:
Server managements and players tracking.
- **soundsystem**:
Support to stopable and playable tracks.
- **stdmodulesystem**:
The heart of the module system. Provide datapack scanning, loading and ticking with a dependecy resolver. Include the "object_runtime" for oop based programming style with the "obj" class and other subclasses.
- **string**:
String manipulation functions: to/from char array, parse, pad, find, replace, multiple replace and others.
- **test**:
Testing datapack.
- **time**:
Time manipulation and querying.
- **utils**:
Common utils like bounding box and others.
- **uuid**:
UUID generation functions.
- **world_debug**:
Debug for the world handler. Only for developement mode.
- **world_handler**:
Provide a custom chunk loading, unloading and ticking system. Provide customizable ticking areas and emits chunk based events.
- **world_laoder**:
Set the random tick speed to 0 and implements custom world ticking functions.

## Can I write a custom module?

The goal of **stdmodulesystem** is to reuse the logic of the standard modules to create new modules that can be simple
libraries or complete mods. Everyone can write a new module!

# TECHNICAL OVERVIEW

## Modules

Each datapack must expose a single namespace with the same exact name of the datapack folder.

For be valid a module must have the following defined function tags:


*#minecraft:load*:

```json
{
	"values": [
		"namespace:stdmodulesystem/notify_load"
	]
}
```

This is the only allowed function inside the *#minecraft:load* tag. It's prohibited to define a *#minecraft:tick* tag because the ticking of the datapack is delegated to the core module.

For be valid a module must have the following defined functions:

*namespace:stdmodulesystem/notify_load*:

```mcfunction
data modify storage io: datapack_id set value "namespace"
function stdmodulesystem:notify/datapack_load

```

This function is fundamental for the system to work. It notify the system that this module was succesfully loaded by Minecraft. This function must be the only function included in the laod function tag.

*namespace:stdmodulesystem/get_datapack_manifest*:

```mcfunction
data modify storage io: manifest set value {\
	version: VERSION,\
    dependency_list: [\
		{id: "stdmodulesystem", version: 1},\
		...
	]\
}

return 1

```

This function is the manifest of the module. Version is the version of the module and dependency_list a list of dependecies that are requested by the module to work. A dependency is declared as an object composed by an id (the name of the required module) and version (the version of the required module). Circular dependencies are supported.

Optional functions (you probably need at least the first):

*namespace:stdmodulesystem/on_datapack_load*:

Called when the module is booted. Usually this is used for things that are needed to run only every server (re)load like registry scoreboards and constants. This is not to be confused with the *notify_load* function. This funtion will be called after the module was processed by the core module whitout errors and with all the dependencies correctly loaded.

*namespace:stdmodulesystem/on_datapack_tick*:

Called every server tick. This is the equivalent to put the function in the Minecraft tick tag. The order of ticking of the modules is NOT guaranted.

*namespace:stdmodulesystem/on_datapack_postload*:

Called after every module was booted and before the first tick

*namespace:stdmodulesystem/on_datapack_begin_tick*:

Called before every module is ticked.

*namespace:stdmodulesystem/on_datapack_end_tick*:

Called after every module was ticked.

## Define files

Inside every module the function *namespace:define/define* is a particular function where are defined all declarations like scoreboards and enums. It has this form:

```mcfunction
#
# namespace:define/define
#

# Declare module
#define score_holder ::namespace
#define score_holder ::namespace::const

# Declare storage
#define storage namespace:static
#define storage namespace:volatile
#define storage namespace:data

# Define variables
scoreboard objectives add value dummy
scoreboard ...
```

## API

API function are public function that compose the interface of a module.
An API function has a commented header that has this form:

```mcfunction
#
# namespace:function_path
#
# Function description
#> Scores
#  @score1 (in|out|inout): score description
#  @score2 ...
#> Storage
#  @storage1 (in|out|inout): stroage description
#  @storage2 ...
#> Context
#  @executor (in): description
#  @position (in): description
#> Return data
#  return data description
```

Where scores are a list of scoreboards that need to be valorized and storage are a list of storage paths that need to be valorized before the function call.

A score variable that is requested by the API is assigned in this form:
```mcfunction
scoreboard players set ::in score_name ...
```
A score variable result of the API has this form:
```mcfunction
scoreboard players get ::out score_name
```

A score variable that is requested by the API and modified as a result has this form:
```mcfunction
scoreboard players get ::inout score_name
```

A storage variable that is requested by the API and/or modified as a result has this form:
```mcfunction
data modify storage io: variable_name ...
```

## Local module variables

Local module variables are scoreboards or storage paths that are used to store local data to a module. They are assigned in this form:
```mcfunction
scoreboard players set ::namespace score_name ...
```
```mcfunction
data modify storage namespace:static storage_path ...
data modify storage namespace:volatile storage_path ...
data modify storage namespace:data storage_path ...
```
storage can have 3 scopes:

- static: data that doesn't change after the boot of the module.
- volatile: data that can change at any time and is discarded after every (re)load.
- data: data that persist after every (re)load

## Submodules

A submodule is a sub directory inside a module. Every submodule boot and define functions need to be called from the root module boot and define functions.
A submodule define a new namespace for variables in this form:

```mcfunction
scoreboard players set ::namespace::subnamespace score_name ...
```
```mcfunction
data modify storage namespace:static subnamespace.storage_path ...
data modify storage namespace:volatile subnamespace.storage_path ...
data modify storage namespace:data subnamespace.storage_path ...
```

The API call conventions are identical.

## Registries

For generating Minecraft registries up to date check out: [stdmodulesystem registries generator](https://github.com/Samu64d/stdmodulesystem-registries-generator)

