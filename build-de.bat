:: Compile German language resource file
rmdir /S /Q "%tmp%\Bits"
robocopy "%doc_ds%\Bits\language" "%tmp%\Bits\language" %map%-*.de.gas /S
%tc%\RTC.exe -source "%tmp%\Bits" -out "%ds%\Resources\%map_cs%.de.dsres" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause
