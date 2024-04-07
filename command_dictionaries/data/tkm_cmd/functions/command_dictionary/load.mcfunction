$setblock $(Pos) command_block

$data modify block $(Pos) Command set from storage tkm:command_dictionary commandList.$(folder)[{id:"$(commandID)"}].command

$execute if data storage tkm:command_dictionary commandList.$(folder)[{id:"$(commandID)"}].auto:1b run data modify block $(Pos) auto set value true