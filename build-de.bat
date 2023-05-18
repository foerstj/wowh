:: name of map, case-sensitive
set map_cs=WOWH
:: namespace of resources
set res=WOWH
:: path of DSLOA documents dir (where Bits are)
set doc_dsloa=%USERPROFILE%\Documents\Dungeon Siege LoA
:: path of DS installation
set ds=.
:: path of TankCreator
set tc=..\TankCreator

:: Compile German language resource file
rmdir /S /Q "%tmp%\Bits"
robocopy "%doc_dsloa%\Bits\language" "%tmp%\Bits\language" %res%-* /S
%tc%\RTC.exe -source "%tmp%\Bits" -out "%ds%\DSLOA\%map_cs%-de.dsres" -copyright "Superalf, Warriors of Hell 2002" -title "%map_cs%" -author "Johannes Förstner"
if %errorlevel% neq 0 pause
