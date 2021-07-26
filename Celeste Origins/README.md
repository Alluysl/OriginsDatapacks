# Celeste Origins

[![License: CC BY-ND 4.0](https://img.shields.io/badge/License-CC%20BY--ND%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nd/4.0/)

<a href="https://www.curseforge.com/minecraft/mc-mods/origins"><img src="https://media.discordapp.net/attachments/817078792463187988/831319512464490496/origins_badge.png" alt="Requires Origins" width="180" height="60" /></a>
<a href="https://www.curseforge.com/minecraft/mc-mods/pehkui"><img src="https://cdn.discordapp.com/attachments/747200097015562250/840039825678663741/pehkui_badge.png" alt="Requires Pehkui" width="180" height="60" /></a>

An Origins datapack made to work both in 1.16.5 (tested with Origins 0.7.1, but versions [0.7.3](https://www.curseforge.com/minecraft/mc-mods/origins/files/3319081) (official) or [0.8.1](https://github.com/Alluysl/origins-fabric/releases/tag/v0.8.1) (unofficial) are recommended) and 1.17/1.17.1 (latest version - [1.0.3](https://www.curseforge.com/minecraft/mc-mods/origins/files/3392228) at the time of writing - recommended) that adds an evolving Madeline origin.

Documentation is on the way. Some things (like the upgrade path) are being planned to change.

Thanks to the Cooler Off-Topic people for helping me sometimes (especially eggohito).

## Installing

**You don't need to install the datapack** - nor anything else besides Origins/Pehkui and their dependencies - **to join a server that uses it.**

Steps:
- Head to the [versions](versions) and download the one you wish to use. The latest one for the indicated Minecraft version is recommended.
- For singleplayer/LAN, put the datapack in the corresponding folder of your world (`%appdata%/.minecraft/saves/<world name>/datapacks/`). [Here](https://youtu.be/ekFgQsLO5x4)'s how to add datapacks on Aternos.
- Quit and rejoin the world (or restart the server) for the changes to take effects (`/reload` works on paper but I have found it to be extremely unreliable).

Do **not** use `/datapack disable` on this pack, your world will probably freeze.

## Performance

The numbers may be different in your case. These are what I got myself in 1.16.5 with Lithium and Phosphor installed.

One player with the Madeline origin adds an overhead corresponding to keeping a dozen chunks loaded in a default world (render distance 2), which seems acceptable. High amounts of refill gems or golden feathers might increase this but not to a massive extent, unless that amount is *really* high (hundreds).

Weak servers such as Aternos don't actually seem to have an issue with the origin, and are faring decently well (though I have only tested it with a single player online), however other activities causing lag could have a significant impact on the playability of the origin, which relies heavily on server-side calculations.

***Nevertheless, do not play this origin on a server if your internet connection is bad, you will not have a good time.*** With a decent connection featuring a stable ping around 50ms, the origin performed about as well as in singleplayer, but my DSL and its ping cycling between 200ms and 500ms completely killed the gameplay and made it into literal torture. Bandwidth didn't seem to cause problems as long as it was around 3 Mb/s down and 200 kb/s up, or more, but even lower amounts might work.

Considering particle effects, there may be lag on weak computers, but I'm unable to test it out myself. Let me know if that's the case.