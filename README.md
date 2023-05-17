# WOWH remaster

The original 3rd-party WOWH map, remastered.\
WOWH means World of Warriors of Hell. Warriors of Hell was a German guild of Diablo II players.

## What I did

This map is re-buildable and editable. I opened & saved every region in Siege Editor v1.7. The dsmap file can be rebuilt using the batch scripts, provided you have the folder structure of Dungeon Siege, TankCreator and gaspy.
- SE saves the "required_level" attributes for multiplayer start positions with an "i" in front, which however breaks the level requirement.\
  This is fixed during build by a gaspy script.
- Renamed the map so there are no conflicts with the original map.\
  The internal name is *world/maps/wowh*.\
  The generated file names are *Dungeon Siege/DSLOA/WOWH.dsmap* and *WOWH.dsres*.\
  The ingame name is *Welt der Warriors of Hell (remastered)*.
- Renamed internal names of regions, conversation ids, world locations, quests etc. in English

## How to build

GasPy repo: https://github.com/foerstj/gaspy

- Put TankCreator and gaspy on the same folder level as your Dungeon Siege installation. Basically in the upper folder, you should have a "Dungeon Siege" folder, a "TankCreator" folder, and a "gaspy" folder.
- Put this repo as "Bits" into your personal Dungeon Siege LoA folder (where the savegames & screenshots are).
- Go into your Dungeon Siege installation folder and open CMD there.
- %USERPROFILE%\Documents\Dungeon Siege LoA\Bits\build.bat

## Attribution

This map was created by the "Warriors of Hell" guild of Diablo II players, not me. I'm just doing minor changes here.
