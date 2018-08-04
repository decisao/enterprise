@echo off
@echo Excluindo os arquivos desnecessarios...
del C:\enterprise\instalador\e2instalar.exe
upx --best --lzma C:\enterprise\teste\enterprise.exe
upx --best --lzma C:\enterprise\teste\e2admrep.exe
iscc e2instalar.iss
pause
