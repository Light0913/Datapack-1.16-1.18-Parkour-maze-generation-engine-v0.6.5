# [Datapack] [1.16-1.18+] Parkour maze generation engine v0.6.5 -- intelligent generation of Parkour maze!

## Preface

We have a method to generate parkour with algorithm and maze with algorithm

(In fact, it is a "parkour maze", which is essentially a maze, but the route is parkour line - the maze is professional, parkour only stays in the "box" at present, but it is also very awesome)

——If it is not in the MC, the algorithm outside can only generate the maze of ordinary lines (two-dimensional or three-dimensional), but because Steve in adventure mode can't fly, so - Parkour!

Maybe if you want to add some maze elements to your map, you might as well try this one. You can easily build a parkour maze with a few instructions~

## Matters needing attention

After decompressing the downloaded compressed package, there are two compressed packages, "ParkourMaze" and "Randomer", which can be put into the data package folder

**The "ParkourMaze" packet requires a front packet: "Randomer"**

## Version

Minecraft for [1.16-1.18+]

## Version log

[0.6.3] Solved the problem that the new world could not use data packets normally (solved an infinite self-iteration of goal_set)

[0.6.4] Solved the problem that survival or adventure mode did not score when it reached the scoring point (I don't know where hand sliding changed the command)

[0.6.5] solves the problem that the execute positioned method cannot modify the actual starting point position (remove "at @ s" in "start")

## Use steps

### A. Manual generation

- One, Reload first

`/reload`


- Two, Enclose a closed area with bedrock or barrier or ordinary stone bricks (bedlock/barrier/stone_bricks)

(It is recommended to use fill's outline or hole mode. In addition, this area can not be rectangular)

You can also use a door to seal or magma to cushion the bottom, but you need to ensure that there is no 1x2x1 exit in the enclosed area

**——The maze will not pass through these blocks**


- Three, Fill in the inner area of the enclosed space with the box you like

If a ladder (not a stair), spider web or structural vacancy is used, it will be regarded as a "fixed vacancy"

If the block used for the enclosed area in step 2 is added inside, it will be used as a "fixed road block“

(It is also recommended to use fill... if you can find the World-Edit plug-in)

(I usually use stone or air)



- Four, Put yourself in this closed space, and then! Use the command to start building the maze!

`/function parkour_ maze:start`

(This command is also an underlined command prompted in the chat bar when/reload. You can click to enter it quickly)

(If you use execute to change the execution position of this command to the inside of the enclosed space, it is also possible for people not to go inside)

If the enclosed space is large, it is suggested to adjust the number of planning steps first: (the default is 3000, which may be applicable for small ones)

`/scoreboard players set limit maze_ Settings steps`


- Five, Wait patiently for the completion of maze construction. You can use the following instructions to check the remaining steps of maze construction:

`/scoreboard objectives setdisplay sidebar maze_ settings`

See the column "step_remaine" on the right: "~"

The internal construction can also be viewed through the spectator mode, and the creation mode can be F3+N


- Six, If you want to stop ahead of time (can't wait or feel that the maze will not continue to build)

Use the following instructions:

`/function parkour_ maze:end`

After the maze stops, 3 "scoring points" will be generated by default, and points can be added when survival or adventure mode reaches these scoring points~

### B. Automatic generation

- One, Reload first

`/reload`

- Two, Use the functions of the example series

`/function parkour_ maze:example/`

For example:

`/function parkour_ maze:example/cube`

`/function parkour_ maze:example/pan`

`/function parkour_ maze:example/air_ cube`

`/function parkour_ maze:example/air_ pan`

If you feel you have enough time, you can also try shell:

`/function parkour_ maze:example/hell`

## Features

- One, Entity quantity control:

When the number of entities exceeds a certain number, part of the entities will be automatically cleaned to ensure that the labyrinth construction performance will not be affected by the excessive number of entities (at present, it is 500 less than 1000)

- Two, "Breakpoint continuation":

After starting to build the maze, even if you use/reload to reload the data package, or even exit the game and re-enter, the maze can still continue to build normally

- Three, Multiple steps in one frame:

One frame can build a maze in multiple steps, breaking the limit of 20 steps per second, and greatly improving the construction speed (currently the default setting is 10 steps per frame)

## At last

In fact, if someone is willing to use this parkour maze machine on the created map, so that your map can have more map elements, the significance of parkour maze machine can also be reflected

## Resource Statement

I collected this resource myself([Light0913](https://github.com/Light0913)). If you have any modification suggestions, please send me a private letter

### Contact information

- Primary mailbox:Light0913@163.com
- Other mailboxes:Light_LE@qq.com

**Matters needing attention:** main online time:weekend

## Translator

Baidu Translator
