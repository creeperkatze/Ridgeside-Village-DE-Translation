!include "MUI2.nsh"
#!include "LangFile.nsh"

Name "Ridgeside Village - German Translation"
OutFile "Ridgeside Village - German Translation.exe"

RequestExecutionLevel admin

# Define the installer sections
!define MUI_PAGE_CUSTOMFUNCTION_PRE prePageFunction
!define MUI_TEXT_DIRECTORY_TITLE "Stardew Valley Mods Verzeichnis"
!define MUI_TEXT_DIRECTORY_SUBTITLE " "
!define MUI_DIRECTORYPAGE_TEXT_TOP "Bitte den Pfad zum Stardew Valley Mods Verzeichnis angeben:"
!define MUI_DIRECTORYPAGE_TEXT_DESTINATION " "
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_LANGUAGE "German"

Function prePageFunction
	StrCpy $INSTDIR "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Mods"
FunctionEnd

Section "Ridgeside Village - German Translation files"
	SetOutPath "$INSTDIR\Ridgeside Village"
	File /r "..\[CC] Ridgeside Village\*.*"
	File /r "..\[CP] Ridgeside Village\*.*"
	File /r "..\RidgesideVillage\*.*"
	SetOutPath "$INSTDIR"
	File /r "..\Ridgeside Village - German Translation\*.*"
SectionEnd
