/*
    Project 01
    
    Requirements (for 15 base points)
    - Create an interactive fiction story with at least 8 knots 
    - Create at least one major choice that the player can make
    - Reflect that choice back to the player
    - Include at least one loop
    
    To get a full 20 points, expand upon the game in the following ways
    [+2] Include more than eight passages
    [+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
    [+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
    [+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
    
    Make sure to list the items you changed for points in the Readme.md. I cannot guess your intentions!

*/

VAR torch = false
VAR strength = 1
VAR visited_cave = false
VAR visited_lair = false

-> cave_mouth

== cave_mouth ==
{visited_cave:
    You return to the cave entrance. The air feels heavier than before.
- else:
    You stand at the mouth of a cave said to belong to an evil witch.
    ~ visited_cave = true
}

{not torch:
    A torch lies on the cold stone floor.
}

Your strength is {strength}.

+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* {not torch} [Pick up the torch] -> torch_pickup
-> END


== torch_pickup ==
You pick up the torch. It flickers as if reacting to dark magic.
~ torch = true
~ strength = strength + 1
Your strength increases to {strength}.
* [Return to the cave entrance] -> cave_mouth
-> END


== east_tunnel ==
You walk into the east tunnel. A witch’s laugh echoes through the darkness.

+ {torch} [Light the torch] -> east_tunnel_lit
+ [Go back] -> cave_mouth
-> END


== east_tunnel_lit ==
The torchlight reveals a table of bubbling potions.

+ [Examine the potions] -> potion_room
+ [Continue deeper] -> witch_lair
-> END


== potion_room ==
One potion glows brighter than the rest.

+ [Drink the potion] -> bad_ending
+ [Leave it alone] -> east_tunnel_lit
-> END


== west_tunnel ==
The west tunnel smells of rot and old magic.

+ [Explore further] -> cursed_chamber
+ [Go back] -> cave_mouth
-> END


== cursed_chamber ==
Strange symbols cover the walls.

+ {torch} [Burn the symbols with the torch] -> curse_broken
+ {strength >= 2} [Forcefully destroy the symbols] -> curse_broken
+ [Touch the symbols] -> bad_ending
-> END


== curse_broken ==
The symbols fade, and the cave grows quieter. The witch’s power weakens.
* [Return to the cave entrance] -> cave_mouth
-> END


== witch_lair ==
{visited_lair:
    The lair feels emptier now.
- else:
    You step into the witch’s lair.
    ~ visited_lair = true
}

You come face to face with the evil witch.

{torch:
    The witch recoils from the flame and vanishes into smoke.
    You survive.
    -> END
}

Without a torch, the witch overpowers you.
-> bad_ending


== bad_ending ==
The witch’s magic stops your heart.
You are now dead as dark laughter echoes around you.
-> END
