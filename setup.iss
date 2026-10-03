[Setup]
AppName=AlphaTV Movie Converter
AppVersion=1.0
AppPublisher=KavinduLakshan - AlphaK911
AppSupportURL=https://buymeacoffee.com/kavindulakk
DefaultDirName={pf}\AlphaTV Movie Converter
DefaultGroupName=AlphaTV
OutputDir=.\Installer
OutputBaseFilename=Setup_AlphaTV_Converter
SetupIconFile=icon.ico
Compression=lzma2/ultra
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; GroupDescription: "Additional icons:"

[Files]
Source: "dist\AlphaTV_Converter.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "icon.ico"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\AlphaTV Movie Converter"; Filename: "{app}\AlphaTV_Converter.exe"; IconFilename: "{app}\icon.ico"
Name: "{group}\Uninstall AlphaTV Movie Converter"; Filename: "{uninstallexe}"
Name: "{userdesktop}\AlphaTV Movie Converter"; Filename: "{app}\AlphaTV_Converter.exe"; IconFilename: "{app}\icon.ico"; Tasks: desktopicon

[Run]
Filename: "{app}\AlphaTV_Converter.exe"; Description: "Launch AlphaTV Movie Converter"; Flags: nowait postinstall skipifsilent
