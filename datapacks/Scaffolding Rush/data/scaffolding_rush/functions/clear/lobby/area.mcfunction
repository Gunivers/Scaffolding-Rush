


execute at @e[type=marker,name="ScR_ClearLobby",limit=1] run function scaffolding_rush:clear/remove_blocks

execute as @e[type=marker,name="ScR_ClearLobby",limit=1] at @s run teleport @s ~ ~-2 ~
execute as @e[type=marker,name="ScR_ClearLobby",limit=1] store result score @s YEntity run data get entity @s Pos[1]

scoreboard players operation RESET_LOBBY global = @e[type=marker,name="ScR_ClearLobby",limit=1] YEntity
scoreboard players operation RESET_LOBBY global *= -1 const
scoreboard players operation RESET_LOBBY global += 256 const
execute store result bossbar reset_lobby_en value run scoreboard players get RESET_LOBBY global
execute store result bossbar reset_lobby_fr value run scoreboard players get RESET_LOBBY global

#execute unless score @s YEntity matches 2 at @s run function scaffolding_rush:clear/lobby/area
execute unless score @e[type=marker,name="ScR_ClearLobby",limit=1] YEntity matches ..0 run schedule function scaffolding_rush:clear/lobby/area 1t
execute as @e[type=marker,name="ScR_ClearLobby",limit=1] if score @s YEntity matches ..0 at @s run function scaffolding_rush:clear/lobby/finish
