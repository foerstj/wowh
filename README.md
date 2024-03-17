# WOWH remaster

The original 3rd-party WOWH map for vanilla DS1, remastered.\
WOWH means World of Warriors of Hell. Warriors of Hell was a German guild of Diablo II players.

## What I did (remaster)

This map is re-buildable and editable. I opened & saved every region in Siege Editor v1.7. The dsmap file can be rebuilt using the batch scripts, provided you have the folder structure of Dungeon Siege, TankCreator and gaspy.
- SE saves the "required_level" attributes for multiplayer start positions with an "i" in front, which however breaks the level requirement.\
  This is fixed during build by a gaspy script.
- Renamed the map so there are no conflicts with the original map.\
  The internal name is *world/maps/wowh*.\
  The generated file names are *Dungeon Siege/DSLOA/WOWH.dsmap* and *WOWH.dsres*.\
  The ingame name is *Welt der Warriors of Hell (remastered)*.
- Renamed internal names of regions, conversation ids, world locations, quests etc. in English
- Replaced self-implemented "More..." buttons in conversations with standard ones
- Fixed north vector
- Converted to node_mesh_index

## What I did (revisit)

Building on the remaster, for the revisited version I did the following changes:
- Translate texts to English, and add an optional German re-translation file (basically the original texts but I allowed myself to fix some typos)
- Make PWL triggers multiplayer-only
- Fix some annoying cam-blocking nodes
- Fix conversation of Gothar and Jarola
- Brush up plants (randomize size & orientation)
- Fix doors (pathfinding & double doors)
- Make Veteran and Elite actually work
- Add a sign at the end

## How to build

GasPy repo: https://github.com/foerstj/gaspy

- Put TankCreator and gaspy on the same folder level as your Dungeon Siege installation. Basically in the upper folder, you should have a "Dungeon Siege" folder, a "TankCreator" folder, and a "gaspy" folder.
- Put this repo as "Bits" into your personal Dungeon Siege LoA folder (where the savegames & screenshots are).
- Go into your Dungeon Siege installation folder and open CMD there.
- %USERPROFILE%\Documents\Dungeon Siege LoA\Bits\build.bat

## Attribution

This map was created by the "Warriors of Hell" guild of Diablo II players, not me. I'm just doing minor changes here.
