@echo off
@echo Excluindo os arquivos desnecessarios...
del C:\enterprise\instalador\e2instalar.exe
upx --best --lzma C:\enterprise\teste\enterprise.exe
iscc e2instalar.iss
pause
