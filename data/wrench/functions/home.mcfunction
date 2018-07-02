summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["gohome"]}
execute store result entity @e[tag=gohome,limit=1] Pos[0] double 1 run scoreboard players get @s homex
execute store result entity @e[tag=gohome,limit=1] Pos[1] double 1 run scoreboard players get @s homey
execute store result entity @e[tag=gohome,limit=1] Pos[2] double 1 run scoreboard players get @s homez
execute store result entity @e[tag=gohome,limit=1] Dimension int 1 run scoreboard players get @s homed
teleport @e[tag=gohome,limit=1]
kill @e[tag=gohome]
