scoreboard objectives add homex dummy
scoreboard objectives add homey dummy
scoreboard objectives add homez dummy
execute store result score @s homex run data get entity @s pos[0]
execute store result score @s homey run data get entity @s pos[1]
execute store result score @s homez run data get entity @s pos[2]
tellraw @s ["",{"text":"Home set to current location","color":"yellow"}]
