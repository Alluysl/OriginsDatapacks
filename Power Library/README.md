# Power Library

A set of powers that are, unless stated otherwise, free to use as long as you don't claim you've made them (a little credit somewhere in the origin/power description if the power is not too trivial (e.g. guardian laser), or a comment in the power if it's simpler, is enough).

Featuring:

## Guardian Laser Example

A power that allows you to charge up and shoot guardian lasers that hit the first entity. It works on undead mobs and does not go through walls.

### Limitations

The guardian-styled resource bar I chose for the cooldown has been added in 1.17, so if you're targetting 1.16, change the `sprite_location` and `bar_index` to something that suits you.

The anchoring values in the charge/shoot functions have to be edited - in the six non-raycast charge/shoot functions - if you give your origin a different size. I tried using `anchored eyes` but it broke when combined with the `positioned` back-and-forth I need to use `dx` in the shoot raycasting function.

Since I don't see any way to check if the player is crawling (forced into pseudo-swimming by a low ceiling - Origins thinks the player isn't swimming), the laser shoots from the position that would be correct if the player wasn't crawling.

### Customization

Naturally, you can edit the power ([`guardian_laser.json`](src/Guardian%20Laser%20Example/data/guardian_laser_example/powers/guardian_laser.json)) to change the timings/cooldowns, conditions, effects, etc, if you know what you're doing. If you don't, `60` ticks (3s) is how long it takes for the power to recharge once used, `40` ticks (2s) is how long it takes for the beam to power up by holding the key before firing, and `key.origins.primary_active` is the [key binding](https://origins.readthedocs.io/en/latest/misc/keybindings/) of the ability.

You can change the amount of raycast iterations (`$maxIterations grdnlazr_raycast`, will affect the range) and how many iterations to leave between each particle command (`$particleSteps grdnlazr_raycast`) through scoreboards. Take a look at [`load.mcfunction`](src/Guardian%20Laser%20Example/data/guardian_laser_example/functions/guardian_laser/load.mcfunction) for details. Change the values there if you want the pack itself to have changes applied and not just the world.

Refer to [limitations](#limitations) if your origin has a size-modifying power.

You can change how entities are damaged in [`get_damaged.mcfunction`](src/Guardian%20Laser%20Example/data/guardian_laser_example/functions/guardian_laser/get_damaged.mcfunction).

You can change the particle command in [`raycast_charge.mcfunction`](src/Guardian%20Laser%20Example/data/guardian_laser_example/functions/guardian_laser/raycast_charge.mcfunction).

You can also remove the solid block condition there if you want the beam to go through them.

You can change the hitbox size in [`raycast_shoot.mcfunction`](src/Guardian%20Laser%20Example/data/guardian_laser_example/functions/guardian_laser/raycast_shoot.mcfunction) in increments of one block by changing `dx` (present in two locations in the file): the resulting hitbox around each checked position will be a cube with an edge length of `dx + 1`. Following that change you will have to change the position offset distance (`0.5` in v2) to whatever is half of that edge length - make sure you keep the minuses.

You can also remove the `unless entity @e[dx=0,tag=!guardian_laser_immune]` condition in the recursion command (not in the damage command) so the beam hits all entities on its way and not just the first.

You can change the step size (how many blocks the raycasting jumps at each iteration, which is `0.125` by default) by changing it in the caret coordinates in both [`raycast_charge.mcfunction`](src/Guardian%20Laser%20Example/data/guardian_laser_example/functions/guardian_laser/raycast_charge.mcfunction) and [`raycast_shoot.mcfunction`](src/Guardian%20Laser%20Example/data/guardian_laser_example/functions/guardian_laser/raycast_shoot.mcfunction).

### Credits

Uses a solid blocks tag from the community (CandyCaneCazoo, Paymon the Voidwalker#0055, 🅷🆄🅻🅺#8424).