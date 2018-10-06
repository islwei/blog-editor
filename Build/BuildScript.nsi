; 该脚本使用 HM VNISEdit 脚本编辑器向导产生

; 安装程序初始定义常量
!define PRODUCT_NAME "BlogEditor"
!define PRODUCT_VERSION "1.0"
!define PRODUCT_PUBLISHER "Elijah Wei"
!define PRODUCT_WEB_SITE "https://github.com/islwei/blog-editor"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\BlogEditor.exe"

SetCompressor lzma

; ------ MUI 现代界面定义 (1.67 版本以上兼容) ------
!include "MUI.nsh"

; MUI 预定义常量
!define MUI_ABORTWARNING
!define MUI_ICON "..\BuildOut\BlogEditor-win32-x64\favicon.ico"

; 欢迎页面
!insertmacro MUI_PAGE_WELCOME
; 许可协议页面
!insertmacro MUI_PAGE_LICENSE "..\BuildOut\BlogEditor-win32-x64\LICENSE"
; 安装目录选择页面
!insertmacro MUI_PAGE_DIRECTORY
; 安装过程页面
!insertmacro MUI_PAGE_INSTFILES
; 安装完成页面
!define MUI_FINISHPAGE_RUN "$INSTDIR\BlogEditor.exe"
!insertmacro MUI_PAGE_FINISH

; 安装界面包含的语言设置
!insertmacro MUI_LANGUAGE "SimpChinese"

; 安装预释放文件
!insertmacro MUI_RESERVEFILE_INSTALLOPTIONS
; ------ MUI 现代界面定义结束 ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "BlogEditor_v1.0_x64_cn_setup.exe"
InstallDir "$PROGRAMFILES\BlogEditor"
InstallDirRegKey HKLM "${PRODUCT_UNINST_KEY}" "UninstallString"
ShowInstDetails show

Section "MainSection" SEC01
  SetOutPath "$INSTDIR\locales"
  SetOverwrite ifnewer
  File "..\BuildOut\BlogEditor-win32-x64\locales\zh-TW.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\zh-CN.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\vi.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\uk.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\tr.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\th.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\te.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\ta.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\sw.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\sv.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\sr.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\sl.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\sk.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\ru.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\ro.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\pt-PT.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\pt-BR.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\pl.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\nl.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\nb.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\ms.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\mr.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\ml.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\lv.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\lt.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\ko.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\kn.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\ja.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\it.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\id.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\hu.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\hr.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\hi.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\he.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\gu.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\fr.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\fil.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\fi.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\fake-bidi.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\fa.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\et.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\es-419.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\es.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\en-US.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\en-GB.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\el.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\de.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\da.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\cs.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\ca.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\bn.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\bg.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\ar.pak"
  File "..\BuildOut\BlogEditor-win32-x64\locales\am.pak"
  SetOutPath "$INSTDIR\resources"
  File "..\BuildOut\BlogEditor-win32-x64\resources\electron.asar"
  File "..\BuildOut\BlogEditor-win32-x64\resources\app.asar"
  SetOutPath "$INSTDIR"
  File "..\BuildOut\BlogEditor-win32-x64\views_resources_200_percent.pak"
  CreateDirectory "$SMPROGRAMS\BlogEditor"
  CreateShortCut "$SMPROGRAMS\BlogEditor\BlogEditor.lnk" "$INSTDIR\BlogEditor.exe"
  CreateShortCut "$DESKTOP\BlogEditor.lnk" "$INSTDIR\BlogEditor.exe"
  File "..\BuildOut\BlogEditor-win32-x64\version"
  File "..\BuildOut\BlogEditor-win32-x64\vcruntime140.dll"
  File "..\BuildOut\BlogEditor-win32-x64\v8_context_snapshot.bin"
  File "..\BuildOut\BlogEditor-win32-x64\ui_resources_200_percent.pak"
  File "..\BuildOut\BlogEditor-win32-x64\ucrtbase.dll"
  File "..\BuildOut\BlogEditor-win32-x64\node.dll"
  File "..\BuildOut\BlogEditor-win32-x64\natives_blob.bin"
  File "..\BuildOut\BlogEditor-win32-x64\msvcp140.dll"
  File "..\BuildOut\BlogEditor-win32-x64\LICENSES.chromium.html"
  File "..\BuildOut\BlogEditor-win32-x64\LICENSE"
  File "..\BuildOut\BlogEditor-win32-x64\libGLESv2.dll"
  File "..\BuildOut\BlogEditor-win32-x64\libEGL.dll"
  File "..\BuildOut\BlogEditor-win32-x64\icudtl.dat"
  File "..\BuildOut\BlogEditor-win32-x64\ffmpeg.dll"
  File "..\BuildOut\BlogEditor-win32-x64\d3dcompiler_47.dll"
  File "..\BuildOut\BlogEditor-win32-x64\content_shell.pak"
  File "..\BuildOut\BlogEditor-win32-x64\content_resources_200_percent.pak"
  File "..\BuildOut\BlogEditor-win32-x64\BlogEditor.exe"
  File "..\BuildOut\BlogEditor-win32-x64\blink_image_resources_200_percent.pak"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-crt-utility-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-crt-time-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-crt-string-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-crt-stdio-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-crt-runtime-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-crt-process-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-crt-private-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-crt-multibyte-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-crt-math-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-crt-locale-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-crt-heap-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-crt-filesystem-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-crt-environment-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-crt-convert-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-crt-conio-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-util-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-timezone-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-sysinfo-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-synch-l1-2-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-synch-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-string-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-rtlsupport-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-profile-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-processthreads-l1-1-1.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-processthreads-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-processenvironment-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-namedpipe-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-memory-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-localization-l1-2-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-libraryloader-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-interlocked-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-heap-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-handle-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-file-l2-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-file-l1-2-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-file-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-errorhandling-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-debug-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-datetime-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\api-ms-win-core-console-l1-1-0.dll"
  File "..\BuildOut\BlogEditor-win32-x64\favicon.ico"
SectionEnd

Section -Post
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\BlogEditor.exe"
SectionEnd
