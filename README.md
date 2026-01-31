# Project-01

# Kevin Huang

# Khuang2004

# ## Project 01 – Changes Made and Point Breakdown

I used my original cave story from the first exercise and expanded it into a complete interactive fiction game.

- Created an interactive fiction story with more than eight knots (10 total).
- Added a major choice between taking the east tunnel or west tunnel, which leads to different paths and endings (Lines 41–42).
- Player choices affect the story outcome, especially whether the player has the torch during the witch encounter (Lines 113–120).
- Included a loop that allows the player to return to the cave entrance from multiple locations (Lines 52, 60, 84, 99).

- More than eight knots
  - cave_mouth – starting area and main loop point (Line 26)
  - torch_pickup – player picks up the torch and gains strength (Line 47)
  - east_tunnel – east tunnel path (Line 56)
  - east_tunnel_lit – lit tunnel with potion table (Line 64)
  - potion_room – potion choice with bad ending (Line 72)
  - west_tunnel – west tunnel path (Line 80)
  - cursed_chamber – room with gated choices (Line 88)
  - curse_broken – curse resolution (Line 97)
  - witch_lair – final encounter with the witch (Line 103)
  - bad_ending – losing ending (Line 123)

- Item system (torch)
  - Torch variable declared (Line 20)
  - Torch pickup and inventory change (Lines 48–49)
  - Torch required for certain choices and the good ending (Lines 59, 91, 113–116)

- Player stat (strength)
  - Strength variable declared (Line 21)
  - Strength increases when picking up the torch (Line 50)
  - Strength-gated choice in cursed chamber (Line 92)

- Visited passage tracking
  - visited_cave variable declared and used to change cave description (Lines 22, 28–33)
  - visited_lair variable declared and used to change lair description (Lines 23, 104–109)
