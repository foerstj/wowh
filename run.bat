:: This script is supposed to be executed from your DS installation folder.
:: TankCreator is expected to be in a sibling dir.

:: name of map
set map=wowh
:: path of DSLOA documents dir (where Bits are)
set doc_ds=%USERPROFILE%\Documents\Dungeon Siege
:: path of DS installation
set ds=.

:: Compile dsmap file
call "%doc_ds%\Bits\build.bat" %*

::pause

:: Run it!
"%ds%\DSLOA.exe" nointro=true map=%map%

:: Cleanup resources so as not to confuse Siege Editor
call "%doc_ds%\Bits\cleanup.bat" %*
