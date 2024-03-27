!include "MUI2.nsh"
#!include "LangFile.nsh"

Name "Ridgeside Village - German Translation"
OutFile "Ridgeside Village - German Translation.exe"

RequestExecutionLevel admin
SetCompressor /SOLID lzma

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
	SetOutPath "$INSTDIR\Ridgeside Village\[CC] Ridgeside Village\i18n"
	File /r "..\Ridgeside Village\[CC] Ridgeside Village\i18n\de.json"
	SetOutPath "$INSTDIR\Ridgeside Village\[CP] Ridgeside Village\i18n"
	File /r "..\Ridgeside Village\[CP] Ridgeside Village\i18n\de.json"
	SetOutPath "$INSTDIR\Ridgeside Village\RidgesideVillage\i18n"
	File /r "..\Ridgeside Village\RidgesideVillage\i18n\de.json"
	SetOutPath "$INSTDIR\Ridgeside Village - German Translation"
	File /r "..\Ridgeside Village - German Translation\*.*"
SectionEnd
