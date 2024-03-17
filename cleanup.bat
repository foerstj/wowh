:: This script is supposed to be executed from your DS installation folder.

:: name of map, case-sensitive
set map_cs=WOWH
:: path of DS installation
set ds=.

:: Cleanup resources so as not to confuse Siege Editor
del "%ds%\Resources\%map_cs%.dsres"
del "%ds%\Resources\%map_cs%.de.dsres"
