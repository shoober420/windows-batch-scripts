rem Enable and Rename Components for Windows Updates

rem Enable Smartscreen (to restore run "sfc /scannow")
takeown /s %computername% /u %username% /f "%WinDir%\System32\smartscreen.exe"
icacls "%WinDir%\System32\smartscreen.exe" /grant:r %username%:F
ren "%WinDir%\System32\smartscreen.exe.bak" "ApplicationFrameHost.exe"

rem Enable GameBarPresenceWriter.exe (to restore run SFC scan)
takeown /s %computername% /u %username% /f "%WINDIR%\System32\GameBarPresenceWriter.exe"
icacls "%WINDIR%\System32\GameBarPresenceWriter.exe" /inheritance:r /grant:r %username%:F
ren "%WinDir%\System32\GameBarPresenceWriter.exe.bak" "GameBarPresenceWriter.exe"

rem Enable Start (to restore run SFC scan)
takeown /s %computername% /u %username% /f "%WINDIR%\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\StartMenuExperienceHost.exe"
icacls "%WINDIR%\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\StartMenuExperienceHost.exe" /inheritance:r /grant:r %username%:F
ren "%WINDIR%\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\StartMenuExperienceHost.exe.bak" "StartMenuExperienceHost.exe"

rem Enable Search (Cortana/to restore run SFC scan)
rem winget uninstall "cortana"
takeown /s %computername% /u %username% /f "%WINDIR%\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\SearchHost.exe"
icacls "%WINDIR%\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\SearchHost.exe" /inheritance:r /grant:r %username%:F
ren "%WINDIR%\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\SearchHost.exe.bak" "SearchHost.exe"

rem Shell Experience Host (to restore run "sfc /scannow")
takeown /s %computername% /u %username% /f "C:\Windows\SystemApps\ShellExperienceHost_cw5n1h2txyewy\ShellExperienceHost.exe"
icacls "C:\Windows\SystemApps\ShellExperienceHost_cw5n1h2txyewy\ShellExperienceHost.exe" /grant:r %username%:F
ren "C:\Windows\SystemApps\ShellExperienceHost_cw5n1h2txyewy\ShellExperienceHost.exe.bak" "ShellExperienceHost.exe"

rem Search Host (to restore run "sfc /scannow")
takeown /s %computername% /u %username% /f "C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\SearchHost.exe"
icacls "C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\SearchHost.exe" /grant:r %username%:F
taskkill /im SearchHost.exe /f
ren "C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\SearchHost.exe.bak" "SearchHost.exe"








rem Application Frame Host (to restore run "sfc /scannow")
takeown /s %computername% /u %username% /f "%WinDir%\System32\ApplicationFrameHost.exe"
icacls "%WinDir%\System32\ApplicationFrameHost.exe" /grant:r %username%:F
taskkill /im ApplicationFrameHost.exe /f
rem del "%WinDir%\System32\ApplicationFrameHost.exe" /s /f /q
ren "%WinDir%\System32\ApplicationFrameHost.exe" "ApplicationFrameHost.exe.bak"

rem Remove Spatial Audio License Service (to restore run "sfc /scannow")
takeown /s %computername% /u %username% /f "%WinDir%\System32\SpatialAudioLicenseSrv.exe"
icacls "%WinDir%\System32\SpatialAudioLicenseSrv.exe" /grant:r %username%:F
taskkill /im SpatialAudioLicenseSrv.exe /f
rem del "%WinDir%\System32\SpatialAudioLicenseSrv.exe" /s /f /q
ren "%WinDir%\System32\SpatialAudioLicenseSrv.exe" "SpatialAudioLicenseSrv.exe.bak"

rem Remove Spatial Audio License Service 64 (to restore run "sfc /scannow")
takeown /s %computername% /u %username% /f "%WinDir%\SysWOW64\SpatialAudioLicenseSrv.exe"
icacls "%WinDir%\SysWOW64\SpatialAudioLicenseSrv.exe" /grant:r %username%:F
taskkill /im SpatialAudioLicenseSrv.exe /f
rem del "%WinDir%\SysWOW64\SpatialAudioLicenseSrv.exe" /s /f /q
ren "%WinDir%\SysWOW64\SpatialAudioLicenseSrv.exe" "SpatialAudioLicenseSrv.exe.bak"

rem Remove AMD User Experience Program Master
takeown /s %computername% /u %username% /f "C:\Program Files\AMD\Performance Profile Client\AUEPMaster.exe"
icacls "C:\Program Files\AMD\Performance Profile Client\AUEPMaster.exe" /grant:r %username%:F
taskkill /im AUEPMaster.exe /f
del "C:\Program Files\AMD\Performance Profile Client\AUEPMaster.exe" /s /f /q

rem Remove Armoury Socket Server
takeown /s %computername% /u %username% /f "C:\Program Files (x86)\ASUS\ArmouryDevice\dll\ArmourySocketServer.exe"
icacls "C:\Program Files (x86)\ASUS\ArmouryDevice\dll\ArmourySocketServer.exe" /grant:r %username%:F
taskkill /im ArmourySocketServer.exe /f
del "C:\Program Files (x86)\ASUS\ArmouryDevice\dll\ArmourySocketServer.exe" /s /f /q

rem Remove P508PowerAgent
takeown /s %computername% /u %username% /f "C:\Program Files (x86)\ASUS\ArmouryDevice\dll\ShareFromArmouryIII\Mouse\ROG STRIX CARRY\P508PowerAgent.exe"
icacls "C:\Program Files (x86)\ASUS\ArmouryDevice\dll\ShareFromArmouryIII\Mouse\ROG STRIX CARRY\P508PowerAgent.exe" /grant:r %username%:F
taskkill /im P508PowerAgent.exe /f
del "C:\Program Files (x86)\ASUS\ArmouryDevice\dll\ShareFromArmouryIII\Mouse\ROG STRIX CARRY\P508PowerAgent.exe" /s /f /q
