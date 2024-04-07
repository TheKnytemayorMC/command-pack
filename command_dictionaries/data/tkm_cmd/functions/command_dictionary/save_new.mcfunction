$data modify storage tkm:command_dictionary commandList.$(folder) prepend value {id:"$(commandID)", command:"$(command)", auto:$(executeOnPlace)}

execute if data storage tkm:command_dictionary commandList.$(folder)[{id:"$(id)"}].auto:1 run data modify storage tkm:command_dictionary commandList.$(folder)[{id:"$(id)"}].auto set value 1b

execute if data storage tkm:command_dictionary commandList.$(folder)[{id:"$(id)"}].auto:true run data modify storage tkm:command_dictionary commandList.$(folder)[{id:"$(id)"}].auto set value 1b

execute if data storage tkm:command_dictionary commandList.$(folder)[{id:"$(id)"}].auto:0 run data modify storage tkm:command_dictionary commandList.$(folder)[{id:"$(id)"}].auto set value 0b

execute if data storage tkm:command_dictionary commandList.$(folder)[{id:"$(id)"}].auto:false run data modify storage tkm:command_dictionary commandList.$(folder)[{id:"$(id)"}].auto set value 0b

$tellraw @a [{"text":"[TheKnytemayor CMD]> ", "color":"dark_purple"},{"text": "Added ","color": "aqua"},{"text": " $(commandID) ","italic": true,"color":"aqua"},{"text": " to the command dictionary. Access the command slot by using the command ","italic": false,"color":"aqua"},{"text": " /data get storage tkm:command_dictionary commandList.$(folder)[{id:\"$(commandID)\"}]","color": "green"},{"text": " or by clicking ","color": "aqua"},{"text": "HERE","color": "yellow","bold": true,"clickEvent": {"action": "run_command","value": "/data get storage tkm:command_dictionary commandList.$(folder)[{id:\"$(commandID)\"}]"}}]