datapack enable "file/macro_tools"
datapack enable "file/predicate_tools"
datapack enable "file/command_dictionaries"

tellraw @a[tag=tkm_cmd_loading_viewer] [{"text": "[TheKnytemayor CMD]> ","color":"light_purple"},{"text": "Datapack loaded successfully.","color":"yellow","underlined": true}]