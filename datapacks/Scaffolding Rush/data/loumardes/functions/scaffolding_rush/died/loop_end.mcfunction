gamemode survival @s
function loumardes:scaffolding_rush/team/create_base/armor

title @s[gamemode=!spectator] title ["",{"text":""}]

execute as @s run function loumardes:scaffolding_rush/game/give_items

tag @s remove Respawning
effect clear @s
