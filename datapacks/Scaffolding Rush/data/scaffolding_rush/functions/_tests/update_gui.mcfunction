execute as @e[type=marker,tag=Echest_saver] if score @s Echest_saver_id = @p Echest_saver_id run tag @s add current

execute as @e[type=marker, tag=current] if data entity @s data.
execute as @e[type=marker,tag=current] 