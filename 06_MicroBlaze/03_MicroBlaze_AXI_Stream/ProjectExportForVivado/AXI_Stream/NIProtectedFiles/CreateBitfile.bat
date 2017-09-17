@echo off
setlocal enabledelayedexpansion
set configFileName=environment.ini
set createBitfileExePath=vi.lib\rvi\CDR\createBitfile.exe
set bitfilePath=%~dp0..\AXI_Stream.lvbitx
set codeGenrationResultPath=%~dp0\CodeGenerationResults.lvtxt
set bitstreamPath=%cd%\PXIe6592R_Top_Gen2x8.bin
set labviewFolderConfigKey=LabVIEWInstallationPath
if exist "%~dp0..\%configFileName%" (
  for /f "delims=" %%x in (%~dps0..\%configFileName%) do (set %%x)
  "!%labviewFolderConfigKey%!\%createBitfileExePath%" "%bitfilePath%" "%codeGenrationResultPath%" "%bitstreamPath%"
  if errorlevel 1 ( 
    pushd "%~dp0.."
    echo An error occurred when converting the Vivado Design Suite bitstream to LabVIEW FPGA bitfile. Make sure %labviewFolderConfigKey% in !cd!\%configFileName% is pointing to the correct LabVIEW installation path.
    popd
  )
) else (
  pushd "%~dp0.."
  echo Couldn't find !cd!\%configFileName%.
  echo Possible reason: The export is corrupted. 
  echo Solution: Try rebuilding the corresponding build specification in LabVIEW.
  popd
  exit /b 1
)