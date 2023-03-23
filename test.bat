:<<BATCH
@echo off
:; #comment

setlocal EnableDelayedExpansion

SET "SUCCESS=0"
SET "FAIL=1"

IF NOT "%1"=="" (
  ECHO we have an input
  appFail.exe && call::FuncSuccess || call:FuncFail
)
IF "%1"=="" (
  echo we dont have input
  appSuccess.exe && call::FuncSuccess || call:FuncFail
)

:IntermediaryFunc1
ECHO I am in this function.
exit /B 
ECHO THIS SHOULD NOT BE PRINTED

exit /b  

:FuncSuccess
ECHO I am succeding.
exit /B %SUCCESS%

:FuncFail
ECHO I am failing.
exit /B %FAIL%


BATCH

