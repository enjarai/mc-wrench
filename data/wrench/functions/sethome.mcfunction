scoreboard objectives add homex dummy
scoreboard objectives add homey dummy
scoreboard objectives add homez dummy
scoreboard objectives add homed dummy
execute store result score @s homex run data get entity @s Pos[0]
execute store result score @s homey run data get entity @s Pos[1]
execute store result score @s homez run data get entity @s Pos[2]
execute store result score @s homed run data get entity @s Dimension
tellraw @s ["",{"text":"Home set to current location","color":"yellow"}]
