tellraw @p ["",{"text":"Teleporting...","color":"yellow"}]
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["gohome"]}
execute store result entity @e[tag=gohome,limit=1] Pos[0] double 1 run scoreboard players get @s homex
execute store result entity @e[tag=gohome,limit=1] Pos[1] double 1 run scoreboard players get @s homey
execute store result entity @e[tag=gohome,limit=1] Pos[2] double 1 run scoreboard players get @s homez
execute store result entity @e[tag=gohome,limit=1] Rotation[0] float 1 run scoreboard players get @s homerotx
execute store result entity @e[tag=gohome,limit=1] Rotation[1] float 1 run scoreboard players get @s homeroty
execute store result entity @e[tag=gohome,limit=1] Dimension int 1 run scoreboard players get @s homed
teleport @e[tag=gohome,limit=1]
execute at @s run teleport ~0.5 ~ ~0.5
kill @e[tag=gohome]
