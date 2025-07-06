:: Adjust path yourself 

@echo off
set PYTHON_EXE="C:\Program Files (x86)\Python310-32\python.exe"
set SCRIPT_PATH="D:\Ajay_Dark_File_Manager.py"
set SCRIPT_DIR=D:\
set OUTPUT_DIR=D:\dist

echo [INFO] Cleaning old build folders...
cd /d %SCRIPT_DIR%
rmdir /s /q build dist >nul 2>&1
del test.spec >nul 2>&1

echo [INFO] Installing/upgrading PyInstaller...
%PYTHON_EXE% -m pip install --upgrade pyinstaller

echo [INFO] Compiling test.py into EXE...
%PYTHON_EXE% -m PyInstaller ^
 --noconfirm ^
 --clean ^
 --onefile ^
 --windowed ^
 --distpath %OUTPUT_DIR% ^
 %SCRIPT_PATH%

echo.
echo [OK] Done! Check output in: %OUTPUT_DIR%
pause
