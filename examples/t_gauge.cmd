@echo off

set DIALOG="..\bin\qdialog.exe"


t_gauge_out.cmd | %DIALOG% --title "GAUGE" --no-ok --gauge "Hi, this is a gauge widget" 0 0 10


