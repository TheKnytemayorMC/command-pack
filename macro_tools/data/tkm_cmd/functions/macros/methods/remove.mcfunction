$data remove storage tkm_cmd:components components[{name:"$(name)"}]
$tellraw @p [{"text":"[TheKnytemayor CMD]> ", "color":"dark_purple"},{"text":"Slot '$(name)' has been removed."}]