:: name of map, case-sensitive
set map_cs=WOWH

:: path of DS installation
set ds=%DungeonSiege%

:: Cleanup resources so as not to confuse Siege Editor
del "%ds%\Maps\%map_cs%.dsmap"
del "%ds%\Resources\%map_cs%.dsres"
del "%ds%\Resources\%map_cs%.*.dsres"
