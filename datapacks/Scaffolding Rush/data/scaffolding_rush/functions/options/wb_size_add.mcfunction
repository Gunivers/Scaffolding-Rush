scoreboard players enable @a opt_wb_size_add

scoreboard players operation WBAddTemp options = @s opt_wb_size_add

function scaffolding_rush:options/wb_size_refresh

function scaffolding_rush:options/refresh

tellraw @a[scores={language=0}] ["",{"text":"[SR] ","color":"gold"},{"text":"The worldborder has been set to ","color":"gray"},{"score":{"name":"WBSize","objective":"options"},"color":"gold"},{"text":" blocks","color":"gray"}]
tellraw @a[scores={language=1}] ["",{"text":"[SR] ","color":"gold"},{"text":"La taille de la map a été mise à ","color":"gray"},{"score":{"name":"WBSize","objective":"options"},"color":"gold"},{"text":" blocks","color":"gray"}]