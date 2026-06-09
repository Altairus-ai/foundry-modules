# Rime of the Frostmaiden — Foundry VTT Module

A complete Foundry VTT V14 module for Icewind Dale: Rime of the Frostmaiden.

## Structure

### Parent Module: `rime-of-the-frostmaiden`
**Always load this.** Contains the actor compendium for all Appendix C creatures.

- **RotF: Creatures** — 48 custom actor stat blocks built from Appendix C

### Chapter Modules (load/unload for performance)
Each chapter module contains only journals and scenes for that chapter.

| Module ID | Content |
|---|---|
| `rotf-ch1-ten-towns` | Bremen, Bryn Shander, Caer-Dineval, Caer-Konig, Dougan's Hole, Easthaven, Good Mead, Lonelywood, Targos, Termalaine |
| `rotf-ch2-icewind-dale` | Wilderness Encounters, Angajuk's Bell, Black Cabin, Cackling Chasm, Cave of the Berserkers, Dark Duchess, Id Ascendant, Jarlmoot, Karkolohk, Lost Spire of Netheril, Reghed Tribe Camp, Revel's End, Skytower Shelter, Wyrmdoom Crag |
| `rotf-ch3-sunlight` | Xardorok's Fortress |
| `rotf-ch4-destructions-light` | Return to Ten-Towns, Dragon Scourge, Vellynne's Quest |
| `rotf-ch5-aurils-abode` | Sea of Moving Ice, Island of Solstice, Grimskalle |
| `rotf-ch6-caves-of-hunger` | Race to the Glacier, Opening the Way, Into the Caves |
| `rotf-ch7-doom-of-ythryn` | Necropolis of Ythryn, Auril's Wrath |

## Actor Reference Priority

Actors in journals and scenes reference compendiums in this order:
1. **`fvtt-trazzm-homebrew-5e.trazzm-monsters-2024`** — TRAZZM's automated actors (if available)
2. **`fvtt-trazzm-homebrew-5e.trazzm-automation-actors-2024`** — TRAZZM automation variants
3. **This module's custom actors** — full stat blocks for anything not in TRAZZM's packs

## Custom Actors (48 total)

### Boss / Major Encounters
- Auril (First Form) — CR 9 Monstrosity
- Auril (Second Form) — CR 10 Elemental
- Auril (Third Form) — CR 11 Elemental
- Chardalyn Dragon — CR 11 Construct
- Xardorok Sunblight — CR 5 Humanoid (Duergar)
- Tomb Tapper — CR 10 Construct
- Gnoll Vampire (Tekeli-li) — CR 8 Undead
- Frost Giant Skeleton — CR 6 Undead

### NPCs (Arcane Brotherhood)
- Avarice — CR 7 (tiefling evoker)
- Vellynne Harpell — CR 4 (human necromancer)
- Nass Lantomir's Ghost — CR 6 (undead diviner)
- Dzaan's Simulacrum — CR 1 (construct)

### Reghed Tribe Leaders
- Gunvald Halraggson — CR 5 (Bear King)
- Jarund Elkhardt — CR 5 (Elk King)
- Bjornhild Solvigsdottir — CR 5 (Tiger Queen)
- Isarr Kronenstrom — CR 8 (Wolf Chieftain)

### Unique Creatures
- Chardalyn Berserker — CR 4 Fiend
- Brain in a Jar — CR 3 Undead
- Spitting Mimic — CR 5 Monstrosity
- Snow Golem — CR 3 Construct
- Yeti Tyke — CR 1/8 Monstrosity
- Chwinga — CR 0 Elemental
- Frost Druid — CR 5 Humanoid
- Frost Giant Skeleton — CR 6 Undead
- Goliath Warrior — CR 3 Humanoid
- Goliath Werebear (Oyaminartok) — CR 8 Humanoid
- Gnome Ceremorph — CR 5 Aberration
- Gnome Squidling — CR 1/2 Aberration

### Magen
- Demos Magen — CR 2
- Galvan Magen — CR 3
- Hypnos Magen — CR 1

### Living Spells
- Living Bigby's Hand — CR 4
- Living Blade of Disaster — CR 8
- Living Demiplane — CR 0

### Kobolds & Duergar
- Icewind Kobold — CR 1/8
- Icewind Kobold Zombie — CR 1/8
- Kobold Vampire Spawn — CR 3
- Duergar Mind Master — CR 2
- Duergar Hammerer — CR 2

### Verbeeg
- Verbeeg Longstrider — CR 5 Giant
- Verbeeg Marauder — CR 4 Giant

### Beasts
- Fox — CR 0
- Hare — CR 0
- Seal — CR 0
- Walrus — CR 1/4
- Giant Walrus — CR 4
- Knucklehead Trout — CR 0
- Mountain Goat — CR 1/8
- Sperm Whale — CR 8

## Installation

Install via manifest URL:
```
https://raw.githubusercontent.com/Altairus-ai/foundry-modules/release/rime-of-the-frostmaiden/module.json
```

## Notes
- Requires Foundry VTT V14+ and dnd5e system 5.0+
- Designed to work alongside TRAZZM's Homebrew (`fvtt-trazzm-homebrew-5e`)
- Maps provided separately — third-party replacement maps preferred where available
- Chapter modules are standalone and can be loaded/unloaded independently for performance
