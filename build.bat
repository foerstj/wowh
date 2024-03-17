:: This script is supposed to be executed from your DS installation folder.
:: TankCreator and gaspy are expected to be in sibling dirs.

:: name of map
set map=wowh
:: name of map, case-sensitive
set map_cs=WOWH
:: path of DS documents dir (where Bits are)
set doc_ds=%USERPROFILE%\Documents\Dungeon Siege
:: path of DS installation
set ds=.
:: path of TankCreator
set tc=..\TankCreator
:: path of GasPy
set gaspy=..\gaspy

set copyright=Superalf, Warriors of Hell 2002
set title=%map_cs%
set author=Johannes Förstner

:: param
set mode=%1
echo %mode%

:: pre-build checks
pushd %gaspy%
setlocal EnableDelayedExpansion
if not "%mode%"=="light" (
  set checks=standard
  if "%mode%"=="release" (
    set checks=all
  )
  venv\Scripts\python -m build.pre_build_checks %map% --check !checks! --bits DS1
  if !errorlevel! neq 0 pause
)
endlocal
popd

:: Compile map file
rmdir /S /Q "%tmp%\Bits"
robocopy "%doc_ds%\Bits\world\maps\%map%" "%tmp%\Bits\world\maps\%map%" /E
pushd %gaspy%
venv\Scripts\python -m build.fix_start_positions_required_levels %map% "%tmp%\Bits"
if %errorlevel% neq 0 pause
setlocal EnableDelayedExpansion
if "%mode%"=="release" (
  venv\Scripts\python -m build.add_world_levels %map% "%tmp%\Bits" "%doc_ds%\Bits"
  if !errorlevel! neq 0 pause
)
endlocal
popd
%tc%\RTC.exe -source "%tmp%\Bits" -out "%ds%\Maps\%map_cs%.dsmap" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

:: Compile resource file
rmdir /S /Q "%tmp%\Bits"
robocopy "%doc_ds%\Bits\art" "%tmp%\Bits\art" /E /xf *.psd
robocopy "%doc_ds%\Bits\ui" "%tmp%\Bits\ui" /E
robocopy "%doc_ds%\Bits\world\ai" "%tmp%\Bits\world\ai" /E
%tc%\RTC.exe -source "%tmp%\Bits" -out "%ds%\Resources\%map_cs%.dsres" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

if not "%mode%"=="light" (
  :: Compile German language resource file
  call "%doc_ds%\Bits\build-de.bat"
)

:: Cleanup
rmdir /S /Q "%tmp%\Bits"
