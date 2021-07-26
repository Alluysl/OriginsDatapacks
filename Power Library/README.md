# Power Library

A set of powers that are, unless stated otherwise, free to use as long as you don't claim you've made them (a little credit somewhere in the origin/power description if the power is not too trivial (e.g. guardian laser), or a comment in the power if it's simpler, is enough).

Featuring:

## Guardian Laser Example

A power that allows you to charge up and shoot guardian lasers that hit the first entity. It works on undead mobs and does not go through walls.

### Limitations

The guardian-styled resource bar I chose for the cooldown has been added in 1.17, so if you're targetting 1.16, change the `sprite_location` and `bar_index` to something that suits you.

The anchoring values in the charge/shoot functions have to be edited if you give your origin a different size. I tried using `anchored eyes` but it broke when combined with the `positioned` back-and-forth I need to use `dx` in the shoot raycasting function.

Since I don't see any way to check if the player is crawling (forced into pseudo-swimming by a low ceiling - Origins thinks the player isn't swimming), the laser shoots from the position that would be correct if the player wasn't crawling.

### Credits

Uses a solid blocks tag from the community (CandyCaneCazoo, Paymon the Voidwalker#0055, 🅷🆄🅻🅺#8424).