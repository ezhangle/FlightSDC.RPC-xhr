; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#if VER < 0x05050100
  #error Update your Inno Setup version
#endif
#ifndef UNICODE
  #error Use the Unicode Inno Setup
#endif

#define YANDEX_DOWNLOADER

#define YANDEX_VID_PREFIX 21
#define YANDEX_VID_INDEX 0

[Setup]
AppName=StrongDC++ sqlite x64
AppVerName=StrongDC++ sqlite x64
AppPublisher=StrongDC++ sqlite Team
AppPublisherURL=http://code.google.com/p/flylinkdc/
AppSupportURL=http://code.google.com/p/flylinkdc/issues/list
AppUpdatesURL=http://code.google.com/p/flylinkdc/downloads/list
DefaultDirName={sd}\StrongDC++sqlite
DefaultGroupName=StrongDC++ sqlite
InfoBeforeFile="readme.rtf"
OutputBaseFilename=setup-factory-strongdc-sqlite-x86
SetupIconFile="..\res\StrongDC.ico"
Compression=lzma2/ultra64
SolidCompression=yes
WizardImageFile=setup-1.bmp
WizardSmallImageFile=setup-2.bmp
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
InfoAfterFile=infoafter.rtf
AppendDefaultDirName=false

[Languages]
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
[Files]
Source: "..\compiled\StrongDC.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\compiled\Settings\GeoIPCountryWhois.csv"; DestDir: "{app}\Settings"; Flags: overwritereadonly ignoreversion
Source: "..\compiled\mpc-hc.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\compiled\Russian.xml"; DestDir: "{app}";
Source: "..\compiled\EmoPacks\*.*"; Excludes: "\.svn\"; DestDir: "{app}\EmoPacks"; Flags: createallsubdirs overwritereadonly ignoreversion recursesubdirs
Source: "..\compiled\Settings\CustomLocations.bmp"; DestDir: "{app}\Settings"; Flags:  onlyifdoesntexist ignoreversion
Source: "..\compiled\Settings\CustomLocations.ini"; DestDir: "{app}\Settings"; Flags:  onlyifdoesntexist
Source: "..\compiled\Settings\IPTrust.ini"; DestDir: "{app}\Settings"; Flags: onlyifdoesntexist
Source: "..\compiled\crshhndl-x64.dll"; DestDir: "{app}"; Flags: overwritereadonly ignoreversion

[Icons]
Name: "{group}\StrongDC++ sqlite"; Filename: "{app}\StrongDC.exe"; WorkingDir: "{app}"
Name: "{group}\{cm:ProgramOnTheWeb,StrongDC++ sqlite}"; Filename: "http://flylinkdc.googlecode.com/"
Name: "{group}\{cm:UninstallProgram,StrongDC++ sqlite}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\StrongDC++ sqlite"; Filename: "{app}\StrongDC.exe"; Tasks: desktopicon ; WorkingDir: "{app}"
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\StrongDC++ sqlite"; Filename: "{app}\StrongDC.exe"; Tasks: quicklaunchicon ; WorkingDir: "{app}"

[Run]
Filename: "{app}\StrongDC.exe"; Description: "{cm:LaunchProgram,StrongDC++ sqlite}"; Flags: nowait postinstall skipifsilent
#include "C:\Users\ppa\Documents\My Dropbox\src\install-yandex\inc_finally_yandex_strongdc.hss"
#include "factory-strongdc-sqlite-code.hss"