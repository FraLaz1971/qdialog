@echo off

set PCT=1

:loop

echo "XXX"
echo %PCT%
echo "The new message (%PCT% percent)"
echo "XXX"

set /a PCT=%PCT%+10

rem just a delay.
ping localhost > null


if %PCT% == 100 goto :finish
goto :loop

:finish
