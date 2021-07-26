# Spring power explanation

## Thought process

Springs in Celeste provide interesting gameplay opportunities. I wanted to provide a way for players with the Madeline origin to have access to that in their environment.

## Limitations in design

Unfortunately `add_velocity` doesn't work well server-side and is likely to be made client-side only (I'm the author of that change, assuming it's implemented into the mod, and the reasoning is simple: velocity in Minecraft is dictated by the client; it's possible to set the velocity on the server (not with commands, as you can't modify player NBT data), but it works weird because it causes a desync, and when it comes to *reading* the velocity on the server, well that will never be the right value). This means I can't use `action_over_time` which at the very least at the time of writing is only ticking on the server, but the client has no power that triggers without input or events, besides an `active_self` bound to a continuous key that would need to be held down, but that's not very fun for gameplay. If you disagree let me know!

## Implementation used

Naturally pistons were used for springs, specifically piston heads. Out of the six cardinal direction, five were preserved. Pistons facing down don't do anything because I don't see a way to push the player down, and they're not very useful anyway.

Upward springs only trigger if you *land* on them, not if you walk on them. That's because `action_on_land` is the closest I could get to the expected result that triggers on the client. The result is pretty trivial, adding the velocity, playing the sound, and scheduling a refresh of the dashes and stamina. There is, though, a condition that if the player exits climbing by landing on a spring (goes over the edge onto the surface of the piston head), they won't be thrown up. This is because during testing I was constantly thrown way too high up in that case, due to the climbing mechanics being weird.

Sideways springs use the property of mobs to push the players on the XZ plane if their hitbox intersects with the player. This is the best way I found to set the velocity of the player server-side without actually teleporting them, although it's unreliable. If you're reading this and have a better idea please tell me. Either way, small bees are spawned to push the player. Unfortunately bees don't have an invisiblity boolean like armor stands and the invisibility status effect doesn't apply immediately and one can see the bees flashing. Spawning them at `~ 512 ~` then teleporting them makes them take too long to get to the player. If you have a better idea, whether for making the bees always invisible, or of another entity to use to push the player, I'd be thankful to hear it. Again the dashes and stamina are reset. A lot of the logic comes from there being eight different directions, and from preventing the delay the method induces in pushing the player from making the process trigger several times at once from it taking more than 1 tick to fully fire. This prevention works by requiring a cooldown to expire or the neighboring spring configuration to change for a push to trigger. Tracking the latter uses resources which are set in a way that hopefully is more performant than commands, but is thus more convoluted.

## Limitations of the implementation

It turns out using mobs to push the player is unreliable. It doesn't work great, has a bit of delay, and doesn't push the player much, especially if they're already moving.

It also turns out that sometimes vertical springs will bounce the player up two or three times per landing (due to lag, I imagine, but the correlation seems low), which I mitigated by giving bouncing a small cooldown but maybe it can still happen.

Due to those I implemented a system to enable/disable (for individual players) horizontal pushing (off by default), vertical pushing (on), and dash/stamina restauration (on) separately (and also the whole power), however only the first one uses scoreboards (and allows for a bit more control than the others because the reference point of minimum score needed to have the effect can be moved which might be useful sometimes, and more importantly because a default value can be set through scoreboards), while the other two use a resource which is more performant but a little more restrictive. Maybe this could change, I don't really know.

## Going forward

This power was pretty hard to implement properly, and unless someone has an idea that I haven't had I don't think it can be improved much, even in the for the current versions of Origins/Apoli. Perhaps future updates of Apoli could allow the power to finally use, for instance, an `action_over_time` on the client, or I could create an addon for that. For now I don't plan to do so but it's a possibility.