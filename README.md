# The Haunt — Foundry VTT Module
**Converted by Questwright (questwright.app)**

A one-shot D&D 5e horror adventure for 4th-5th level characters (3-5 players).
By Phil Beckwith / P.B. Publishing.

## What's Included
- **2 Scenes**: Ground Floor and Second Floor of Montarthas Manor
  - Full wall placement (60 + 57 walls) derived from map analysis
  - Grid calibrated at 75px/square = 5 feet
  - Fog of war enabled, darkness = 1.0 (full dark)
- **27 Journal Entries**: Every room (1-24) + intro, epilogue, and player handout
  - Read-aloud boxed text preserved
  - DM notes with mechanics, DCs, and triggers
- **10 Actors**: All creatures (MM references + custom stat blocks)
  - Evil Doll: full custom stat block
  - Gertrude Night Hag: full custom stat block with combat tactics
  - MM creatures: placeholder entries with compendium IDs for drag-replace
- **8 Items**: All loot including The Leacher's Emerald (custom wondrous item)
- **2 Roll Tables**: Evil Doll appearance tracker, Guest Room spider roll

## Setup Instructions
1. Place this folder in your Foundry `Data/modules/` directory
2. Enable the module in your world (Module Management)
3. Import scenes from the **The Haunt - Scenes** compendium
4. Import journal entries, actors, and items from their respective compendiums
5. Set your world's system to **dnd5e** before importing actors

## Maps
Map art by **Chris Bissette (loottheroom.uk)**.
Colour and greyscale versions are included in `assets/maps/`.
The colour version is set as the scene background by default.

## Wall Notes
- Walls are placed at 75px/square resolution
- Secret doors (Area 8) are marked as secret door type
- The gargoyle trigger line (Area 2) is placed as an ethereal/sense-only wall
- Door placements approximate based on map analysis — review in Foundry scene editor

## Known Limitations
- MM reference actors are placeholder shells — drag the real creature from your dnd5e system compendium onto the token to replace
- The Basement (Area 15) is represented as a sub-area accessible via the stairwell in Area 3 — not a separate scene
- Curved walls (Area 24 bay window) are approximated with line segments

## Adventure Notes
- Milestone leveling: Level 4 start → Level 5 after defeating Gertrude
- Evil Doll: 40% chance per 2nd floor room — track appearances (max 3 meaningful encounters)
- Basement puzzle fallback: if unsolved in 20 real-time minutes, party wakes in Area 24
- Manor collapses after Area 24 combat — see journal entry for rules

