if not "%minimized%"=="" goto :minimized
set minimized=true
start /min cmd /C "%~dpnx0"
goto :EOF
:minimized
del /S src\*.class
javac -cp "lib\*" src\*.java