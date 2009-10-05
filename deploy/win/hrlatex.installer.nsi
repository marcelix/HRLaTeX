SetCompressor bzip2
XPStyle on

!ifndef PRODUCT_VERSION
!define PRODUCT_VERSION "0.21"
!endif

!define PRODUCT_NAME "HRLaTeX"
!define PRODUCT_PUBLISHER "HRLaTeX tim"
!define PRODUCT_WEB_SITE "http://www.tug.hr/"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"


Var TCenterTemplatesDir
Var localtexmfDir

;!addincludedir .
;!include "./build.nsh"
!include "MUI.nsh"
!include "Sections.nsh"




; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON   "icon.ico"
!define MUI_UNICON "icon.ico"

; Language Selection Dialog Settings
!define MUI_LANGDLL_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_LANGDLL_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_LANGDLL_REGISTRY_VALUENAME "NSIS:Language"

;!insertmacro MUI_LANGUAGE "Croatian"
; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "license.txt"
; Directory page
!insertmacro MUI_PAGE_COMPONENTS
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
;


!insertmacro MUI_LANGUAGE "Croatian"
!insertmacro MUI_LANGUAGE "Slovenian"
!insertmacro MUI_LANGUAGE "English"





; MUI end ------

; Version tab za "properties" dijalog
VIAddVersionKey /LANG=${LANG_ENGLISH} "ProductName" "HRLaTeX"
VIAddVersionKey /LANG=${LANG_ENGLISH} "Comments" "todo.."
VIAddVersionKey /LANG=${LANG_ENGLISH} "CompanyName" "HRLaTeX tim"
VIAddVersionKey /LANG=${LANG_ENGLISH} "LegalTrademarks" "HRLaTeX"
VIAddVersionKey /LANG=${LANG_ENGLISH} "LegalCopyright" "LPPL"
VIAddVersionKey /LANG=${LANG_ENGLISH} "FileDescription" "instalacija LaTeX dodataka HRLaTeX projekta"
VIAddVersionKey /LANG=${LANG_ENGLISH} "FileVersion" ${PRODUCT_VERSION}
VIProductVersion "1.0.0.0"
;------------------------------------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "HRLaTeX-${PRODUCT_VERSION}-setup.exe"
InstallDir "$PROGRAMFILES\HRLaTeX"
ShowInstDetails show
ShowUnInstDetails show

Function .onInit
	InitPluginsDir
	File /oname=$PLUGINSDIR\splash.bmp "splash.bmp"
	; pronadji PATH od TeXnicCenter-a.
	splash::show 2500 $PLUGINSDIR\splash
	Pop $0 ; $0 has '1' if the user closed the splash screen early,
	       ; '0' if everything closed normal, and '-1' if some error occured.
        ;
	;
	; Ovo je sad sve smrdano...
	; mislim da je texmf (local) dir za MiKTeX2.5 u Local Settings/Application Data
	; provjeri jel MikTeX instaliran:
	ReadRegStr $0 HKLM Software\MiKTeX.org\MiKTeX\2.5 "(Default)"
	StrCpy $localtexmfDir $0
	StrCmp $localtexmfDir "" 0 0
	StrCpy $localtexmfDir "$LOCALAPPDATA\MiKTeX\2.5\miktex"
        MessageBox MB_OK "$localtexmfDir"  ; sto ako je $localtexmfDir prazan?
	; TODO....
        ;!insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd



; localtexmf dio
Section "-localtexmf" Sec01
		; provjeri jel MikTeX instaliran
		; pronadji PATH od localtexmf-a.
		;Function .onVerifyInstDir
    ;IfFileExists $INSTDIR\Winamp.exe PathGood
    ;  Abort ; if $INSTDIR is not a winamp directory, don't let us install there
    ;PathGood:
  ;FunctionEnd
SectionEnd

; cls i sty
Section "HRLaTeX .cls i .sty datoteke" SecCLSDatoteke
	; kopiraj .cls-ove u PROGRAMFILES i u localtexmf
	;
	; Set Section properties
	SetOverwrite on
	SectionSetText Sec02 ".cls za razne dokumente"
	;
	; Set Section Files and Shortcuts
	SetOutPath "$INSTDIR\"
	File /r "..\..\src\templates\*.sty"
	File /r "..\..\src\templates\*.tex"


        ;kopiraj hrlatex.sty i *.cls datoteke u localtexmf dir.
        StrCmp $localtexmfDir "" KrajInstalacije
        SetOutPath  "$localtexmfDir\tex\hrlatex\"
        File /r "..\..\src\hrlatex_ctan\hrlatex.sty"
        File /r "..\..\src\hrlatex_ctan\hr*.cls"
    	; refresh MikTeX database,
	; TODO: upozori da bude potrajalo...
	KrajInstalacije:
	MessageBox MB_OK "Pricekajte malo"
	ExecWait "initexmf --update-fndb"
SectionEnd



Section "HRLaTeX source datoteke'" SecMaterijaliSrc
	SetOutPath "$INSTDIR\src"
	;File "..\..\src\templates\ispit.cls"
	;File /r "..\*.tex"
SectionEnd

SectionGroup /e "Predlosci za dokumente"
Section "TeXnicCenter" SecTexnicCenter
	ReadRegStr $0 HKLM Software\ToolsCenter\TeXnicCenter\Templates "DefaultDocumentTemplatePath"
	StrCpy $TCenterTemplatesDir $0
  ;MessageBox MB_ICONINFORMATION|MB_OK "TexnicCenter template path is found at $TCenterTemplatesDir"
	StrCmp $TCenterTemplatesDir "" 0 NoAbort  ; Abort ako TC nije instaliran
          MessageBox MB_OK "TeXnicCenter not found. Unable to get install path."
          Abort ; causes installer to quit.
        NoAbort:
        SetOverwrite on
        	; kopiraj template datoteke.
	     SetOutPath "$TCenterTemplatesDir\HRLaTeX"
	     File "..\..\src\templates\nov*.*.tex"
SectionEnd
;Section "etc"
   ;
;SectionEnd
SectionGroupEnd

Section /o "!Update MiKTeX?" SecMikTeXUpdate
	ExecWait "initexmf --update-miktex"
SectionEnd





Section -AdditionalIcons
  SetOutPath $INSTDIR
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateDirectory "$SMPROGRAMS\HRLaTeX"
  CreateShortCut "$SMPROGRAMS\HRLaTeX\web.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\HRLaTeX\deinstaliranje.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
  ExecShell "open" "http://www.tug.hr/"
SectionEnd

; -------------------
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${SecCLSDatoteke} "LaTeX .cls klase za razne tipove dokumenata (ispit.cls, zadaca.cls,...)"
	!insertmacro MUI_DESCRIPTION_TEXT ${SecTexnicCenter} "TeXnicCenter templates"
	!insertmacro MUI_DESCRIPTION_TEXT ${SecMikTeXUpdate} "Pokreni update MikTeX distribucije na kraju instalacije"
!insertmacro MUI_FUNCTION_DESCRIPTION_END



Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "${PRODUCT_NAME} was successfully removed from your computer."
FunctionEnd

Function un.onInit
!insertmacro MUI_UNGETLANGUAGE
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove $(^Name) and all of its components?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
	Delete "$INSTDIR\*.tex"
	Delete "$INSTDIR\*.cls"
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
	RMDir /r "$INSTDIR\mat1"
	RMDir /r "$INSTDIR\mat2"
	RMDir /r "$INSTDIR\mat3"
	RMDir /r "$INSTDIR\mat4"



  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  SetAutoClose true
SectionEnd
