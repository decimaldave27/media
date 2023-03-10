@echo off
color 0A
setlocal EnableDelayedExpansion
title Bitcoin Minor
set "letters=abcdefghijklmnopqrstuvwxyz1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ"
set "string_length=50"
:loop
set "random_string="
for /L %%i in (1,1,%string_length%) do (
  set /A index=!random! %% 62
  for /L %%j in (!index!,1,!index!) do set "random_letter=!letters:~%%j,1!"
  set "random_string=!random_string!!random_letter!"
)
echo %random_string%
goto loop
