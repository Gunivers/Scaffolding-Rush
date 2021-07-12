#create a marker entity 
execute unless entity @e[type=area_effect_cloud,name="ScR_BuildLimit",limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647, CustomName:'{"text":"ScR_BuildLimit"}'}

#move it to the player coordinates and build limit height
tp @e[type=area_effect_cloud,name="ScR_BuildLimit",limit=1] ~ ~ ~
scoreboard players operation @e[type=area_effect_cloud,name="ScR_BuildLimit",limit=1] YEntity = LavaLevel global
scoreboard players operation @e[type=area_effect_cloud,name="ScR_BuildLimit",limit=1] YEntity += BuildHeight options
execute as @e[type=area_effect_cloud,name="ScR_BuildLimit",limit=1] store result entity @s Pos[1] double 1 run scoreboard players get @s YEntity

execute store result score @s global as @e[type=area_effect_cloud,name="ScR_BuildLimit",limit=1] at @s run fill ~-7 ~1 ~-7 ~7 ~5 ~7 air
execute unless score @s global matches 0 run tellraw @s ["",{"text":"build_limit","color":"dark_gray"}]

advancement revoke @a only loumardes:scaffolding_rush/build_limit
