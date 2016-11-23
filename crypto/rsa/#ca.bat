@echo off

rem generic compile batch file for (most) console compilers
rem pause after each compiler if %1 not empty
rem call self on low env space condition
rem (c) 2003-2010 W.Ehrhardt

rem test file
rem =========

set SRC=t_check
::set SRC=t_chkrat
::set SRC=t_chkfp


rem log file (may be con or nul)
rem ============================
::set LOG=nul
set LOG=%SRC%.LOG


rem parameters for test file
rem ========================
set PARA=

rem build options
rem ========================
::set OPT=-dFullData
::set OPT=-ddebug -dnanodata
::set OPT=


rem test whether enough space in environment
rem ========================================
set PCB=A_rather_long_environment_string_for_testing
if  (%PCB%)==(A_rather_long_environment_string_for_testing) goto OK


rem call self with 4096 byte env
rem ============================
set PCB=
%COMSPEC% /E:4096 /C %0 %1 %2 %3 %4 %5 %6 %7 %8 %9
goto ende


:OK

echo Test %SRC% for most compilers  >%LOG%
ver >>%LOG%

set PCB=bpc -b -dMPC_MAXRadix64
del %SRC%.exe >nul
%PCB% %OPT% %SRC%.pas
if not (%1%)==() pause
echo. >>%LOG%
echo Results for %PCB% >>%LOG%
%SRC%.exe %PARA% >>%LOG%

set PCB=bpc -CP -b
del %SRC%.exe >nul
%PCB% %OPT% %SRC%.pas
if not (%1%)==() pause
echo. >>%LOG%
echo Results for %PCB% >>%LOG%
%SRC%.exe %PARA% >>%LOG%

set PCB=call fpc1 -B -TGO32V2
rem WE: FPC 1.0.10
del %SRC%.exe >nul
%PCB% %OPT% %SRC%.pas
if not (%1%)==() pause
echo. >>%LOG%
echo Results for %PCB% >>%LOG%
%SRC%.exe %PARA% >>%LOG%

set PCB=call fpc2 -B -dMPC_MAXRadix64
rem WE: FPC 2.0.4
del %SRC%.exe >nul
%PCB% %OPT% %SRC%.pas
if not (%1%)==() pause
echo. >>%LOG%
echo Results for %PCB% >>%LOG%
%SRC%.exe %PARA% >>%LOG%

set PCB=call fpc224 -B -dMPC_FPrec30K
del %SRC%.exe >nul
%PCB% %OPT% %SRC%.pas
if not (%1%)==() pause
echo. >>%LOG%
echo Results for %PCB% >>%LOG%
%SRC%.exe %PARA% >>%LOG%

set PCB=call fpc240 -B -dMPC_MAXRadix64
del %SRC%.exe >nul
%PCB% %OPT% %SRC%.pas
if not (%1%)==() pause
echo. >>%LOG%
echo Results for %PCB% >>%LOG%
%SRC%.exe %PARA% >>%LOG%

set PCB=call fpc242 -B
del %SRC%.exe >nul
%PCB% %OPT% %SRC%.pas
if not (%1%)==() pause
echo. >>%LOG%
echo Results for %PCB% >>%LOG%
%SRC%.exe %PARA% >>%LOG%

set PCB=call fpc242d -B -dMPC_MAXRadix64
del %SRC%.exe >nul
%PCB% %OPT% %SRC%.pas
if not (%1%)==() pause
echo. >>%LOG%
echo Results for %PCB% >>%LOG%
%SRC%.exe %PARA% >>%LOG%

set PCB=call vpc -b -dMPC_MAXRadix64
del %SRC%.exe >nul
%PCB% %OPT% %SRC%.pas
if not (%1%)==() pause
echo. >>%LOG%
echo Results for %PCB% >>%LOG%
%SRC%.exe %PARA% >>%LOG%

set PCB=D:\DMX\M2\DCC32.EXE -b
del %SRC%.exe >nul
%PCB% %OPT% %SRC%.pas
if not (%1%)==() pause
echo. >>%LOG%
echo Results for %PCB% >>%LOG%
%SRC%.exe %PARA% >>%LOG%

set PCB=D:\DMX\M3\DCC32.EXE -b -dMPC_MAXRadix64
del %SRC%.exe >nul
%PCB% %OPT% %SRC%.pas
if not (%1%)==() pause
echo. >>%LOG%
echo Results for %PCB% >>%LOG%
%SRC%.exe %PARA% >>%LOG%

set PCB=D:\DMX\M4\DCC32.EXE -b -dMPC_FPrec30K
del %SRC%.exe >nul
%PCB% %OPT% %SRC%.pas
if not (%1%)==() pause
echo. >>%LOG%
echo Results for %PCB% >>%LOG%
%SRC%.exe %PARA% >>%LOG%

set PCB=D:\DMX\M5\DCC32.EXE -b  -dMPC_MAXRadix64 -dMPC_FPrec30K
del %SRC%.exe >nul
%PCB% %OPT% %SRC%.pas
if not (%1%)==() pause
echo. >>%LOG%
echo Results for %PCB% >>%LOG%
%SRC%.exe %PARA% >>%LOG%

set PCB=D:\DMX\M6\DCC32.EXE -b
del %SRC%.exe >nul
%PCB% %OPT% %SRC%.pas
if not (%1%)==() pause
echo. >>%LOG%
echo Results for %PCB% >>%LOG%
%SRC%.exe %PARA% >>%LOG%

set PCB=D:\DMX\M7\DCC32.EXE -b  -dMPC_MAXRadix64
del %SRC%.exe >nul
%PCB% %OPT% %SRC%.pas
if not (%1%)==() pause
echo. >>%LOG%
echo Results for %PCB% >>%LOG%
%SRC%.exe %PARA% >>%LOG%

set PCB=D:\DMX\M9\DCC32.EXE -b
del %SRC%.exe >nul
%PCB% %OPT% %SRC%.pas
if not (%1%)==() pause
echo. >>%LOG%
echo Results for %PCB% >>%LOG%
%SRC%.exe %PARA% >>%LOG%

set PCB=D:\DMX\M10\DCC32.EXE -b -dMPC_MAXRadix64
del %SRC%.exe >nul
%PCB% %OPT% %SRC%.pas
if not (%1%)==() pause
echo. >>%LOG%
echo Results for %PCB% >>%LOG%
%SRC%.exe %PARA% >>%LOG%

if not (%OS%)==(Windows_NT) goto NO_D12
set PCB=D:\DMX\M12\DCC32.EXE -b   -dMPC_MAXRadix64
del %SRC%.exe >nul
%PCB% %SRC%.pas
if not (%1%)==() pause
echo. >>%LOG%
echo Results for %PCB% >>%LOG%
%SRC%.exe %PARA% >>%LOG%
:NO_D12

echo.
echo **** Log file: %LOG%

:ende

set PCB=
set SRC=
set LOG=
set PARA=
set OPT=
