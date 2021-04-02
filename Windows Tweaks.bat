rem USE AT OWN RISK AS IS WITHOUT WARRANTY OF ANY KIND !!!!!


rem SSU (Install before CU) - https://msrc.microsoft.com/update-guide/en-us/vulnerability/ADV990001
rem 19042.740.1.1 - http://download.windowsupdate.com/d/msdownload/update/software/secu/2021/01/windows10.0-kb4598481-x64_749fe79fd2e31b145de37c2f9ebf4f711d174dc2.msu
rem DISM /Online /Add-Package /PackagePath:Z:\Desktop\Windows10.0-KB4598481-x64.cab

rem CU (20H2) - https://support.microsoft.com/en-us/help/4581839
rem 19042.804.1.4 - http://download.windowsupdate.com/d/msdownload/update/software/secu/2021/02/windows10.0-kb4601319-x64_fa56d86b14e97133976a808e521f891ee180e101.msu
rem DISM /Online /Add-Package /PackagePath:Z:\Desktop\Windows10.0-KB4601319-x64_PSFX.cab

rem Before making any changes, it is preferable to create a registry backup!
rem https://support.microsoft.com/en-us/topic/how-to-back-up-and-restore-the-registry-in-windows-855140ad-e318-2a13-2829-d428a2ab0692
rem https://www.tweaking.com/content/page/registry_backup.html

rem Or even better, create a system image!
rem https://www.aomeitech.com/ab/standard.html
rem https://www.easeus.com/backup-software/tb-free.html

rem "ValidateAdminCodeSignatures" will prevent exe without a digital signature to run as admin: "A referral was returned from the server."
rem reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "ValidateAdminCodeSignatures" /t REG_DWORD /d "0" /f
rem Windows Defender Firewall is set to block all inbound/outbound except allowed apps, which have to be added first!


rem ________________________________________________________________________________________


rem Basic informations
rem Software recommendations

rem Remove various folders, startup entries and policies
rem Restore essential startup entries

rem Software Setup
rem Windows Setup plus Manual Config

rem Windows Defender Security Center
rem Windows Logging
rem Windows Error Reporting
rem Windows Explorer
rem Windows Optimizations
rem Windows Policies
rem Windows Scheduled Tasks
rem Windows Services
rem Windows Settings
rem Windows Shell
rem Windows Store
rem Windows Support
rem Windows Waypoint


rem ================================= Basic informations ===================================


rem SeDebugPrivilege/SeTcbPrivilege - https://youtu.be/hZKLEw-Our4 - Self-elevation to System (even on SUA) used by ransomware (NotPetya/WannaCry)
rem https://docs.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/act-as-part-of-the-operating-system

rem https://docs.microsoft.com/en-us/windows/deployment/update/waas-overview
rem https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-configuration-service-provider
rem https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-security-baselines

rem Adblock Detection - https://www.detectadblock.com / https://blockads.fivefilters.org
rem Browser Leaks - https://browserleaks.com / https://whoer.net / CanvasFingerprint / WebRTC
rem Browser Tracking Test - https://panopticlick.eff.org
rem Privacy Etags - https://lucb1e.com/rp/cookielesscookies
rem Privacy Tools - https://www.ghacks.net/2015/08/14/comparison-of-windows-10-privacy-tools
rem Privacy Tools - https://www.privacytools.io
rem Privacy Webpage Scan - https://webbkoll.dataskydd.net
rem SSL/TLS Test - https://www.ssllabs.com/ssltest

rem AV Comparison
rem https://www.programmifree.com/confronti
rem https://checklab.pl/en/publications
rem https://www.av-comparatives.org/latest-tests
rem https://www.av-test.org/en/antivirus/home-windows
rem https://www.mrg-effitas.com/test-library
rem https://www.lifewire.com/best-free-antivirus-software-4151895

rem AVs/SSL Filtering - https://adguard.com/en/blog/everything-about-https-filtering.html - https://badssl.com
rem AV is as vulnerable as any other software, but since it uses SYSTEM rights, it is more dangerous - https://cybellum.com/doubleagent-taking-full-control-antivirus
rem Disable webfiltering, AV replacing legitimate certificates - https://www.eff.org/deeplinks/2015/02/dear-software-vendors-please-stop-trying-intercept-your-customers-encrypted
rem MD NeverEnding Story https://www.bleepingcomputer.com/news/security/12-year-old-windows-defender-bug-gives-hackers-admin-rights/
rem https://www.bleepingcomputer.com/news/security/smartservice-and-s5mark-acts-like-an-adware-bodyguard-by-blocking-antivirus-software/
rem https://blog.emsisoft.com/2015/01/17/has-the-antivirus-industry-gone-mad
rem https://www.makeuseof.com/tag/antivirus-tracking-youd-surprised-sends/
rem https://www.av-test.org/en/news/news-single-view/data-protection-or-virus-protection

rem DNS Benchmark / Namebench - https://code.google.com/archive/p/namebench/downloads
rem DNS Hijack / https://sockpuppet.org/blog/2015/01/15/against-dnssec / https://recdnsfp.github.io
rem DNS Encryption (setup DNS server as 127.0.0.1) - https://simplednscrypt.org + https://github.com/DNSCrypt/dnscrypt-proxy
rem DNS ESNI Test - https://www.cloudflare.com/ssl/encrypted-sni/
rem DNS ECH - Good-bye ESNI, hello ECH! - https://blog.cloudflare.com/encrypted-client-hello/
rem DNS Fix / DNS-Lock - https://www.sordum.org/9432/dns-lock-v1-4/
rem DNS List - https://wiki.ipfire.org/dns/public-servers

rem Family Filtering (adult/proxy/search)
rem Cloudflare - https://developers.cloudflare.com/1.1.1.1/1.1.1.1-for-families/setup-instructions/windows/
rem CleanBrowsing - https://cleanbrowsing.org/ip-address - https://categorify.org/recategorize
rem DNS Family - https://dnsforfamily.com/#DNS_Servers
rem Enforce Safe Search (=Adult Filter) - https://chrome.google.com/webstore/detail/enforce-safe-search-adult/fiopkogmohpinncfhneadmpkcikmgkgc
rem NextDNS - https://www.nextdns.io
rem OpenDNS - https://www.opendns.com/setupguide/#familyshield
rem UltraDNS - https://www.publicdns.neustar

rem VPN Comparison / Anonymity
rem https://arstechnica.com/tech-policy/2017/03/senate-votes-to-let-isps-sell-your-web-browsing-history-to-advertisers
rem https://sec.hpi.de/ilc/search
rem https://www.safetydetectives.com/best-vpns
rem https://www.msgsafe.io
rem https://www.av-comparatives.org/tests/vpn-report-2020-35-services/

rem Windows 10 ISO
rem https://www.deskmodder.de/blog/2021/02/18/windows-10-21h1-19043-iso-esd-inkl-updates-deutsch-english
rem https://www.heidoc.net/joomla/technology-science/microsoft/67-microsoft-windows-and-office-iso-download-tool
rem https://tb.rg-adguard.net

rem https://genuineisoverifier.weebly.com
rem https://msdn.rg-adguard.net
rem https://uup.rg-adguard.net
rem https://uupdump.ml/known.php?q=19042.450

rem Check ISO Windows versions and build version
rem dism /Get-WimInfo /WimFile:E:\sources\install.wim
rem dism /Get-WimInfo /WimFile:E:\sources\install.wim /index:1
rem dism /Get-WimInfo /WimFile:E:\sources\install.esd /index:1

rem https://www.tenforums.com/tutorials/3109-shell-commands-list-windows-10-a.html
rem https://www.tenforums.com/tutorials/3123-clsid-key-guid-shortcuts-list-windows-10-a.html
rem https://www.tenforums.com/tutorials/3234-environment-variables-windows-10-a.html
rem https://www.tenforums.com/tutorials/77458-rundll32-commands-list-windows-10-a.html
rem https://www.tenforums.com/tutorials/78108-app-commands-list-windows-10-a.html
rem https://www.tenforums.com/tutorials/78214-settings-pages-list-uri-shortcuts-windows-10-a.html


rem =============================== Software recommendations ===============================


rem AntiVirus software
rem 360 Total Security (CN) - https://www.360totalsecurity.com
rem Adaware (MT) - https://www.adaware.com/free-antivirus-download (Bitdefender's signatures)
rem Adaware Silent - App Managment - Enable Gaming Mode / Disable ThreatWork Alliance
rem Kaspersky Security Cloud (RU) - https://www.kaspersky.com/downloads/thank-you/free-antivirus-download
rem Kaspersky Security Cloud Setup - Accept Kaspersky Security Network and Decline Data Processing / Recommended - uncheck All
rem Kaspersky Security Cloud Setup - Uninstall Kaspersky Secure Connection (trial VPN)
rem Kaspersky Security Cloud Setup -  Settings - Additional - Notifications - uncheck News Notifications and Promotional Materials
rem Kaspersky Security Cloud Performance - Settings - Protection - Turn Off All, but File Anti-Virus
rem Kaspersky Security Cloud Performance - Settings - Additional - uncheck Inject script into web traffic / Do not scan encrypted connections

rem AntiVirus software (Cloud only)
rem Immunet (US) - https://www.immunet.com/index
rem Panda (ES) (it has to be updated manually to the latest version) - https://www.pandasecurity.com/en-us/homeusers/free-antivirus
rem Panda Performance - Settings - General - Disable Panda news / Antivirus - Block files for 10 seconds/Disable show warning/Process Monitor - Disable both
rem WiseVector StopX (CN) - https://www.wisevector.com/en

rem AntiVirus software - additional protection (can be run alongisde of realtime AV)
rem Immunet (US) - https://www.immunet.com/index
rem LMT Anti Logger (VN) - https://www.leminhthanh.me/antilogger
rem OSArmor (IT) - https://www.osarmor.com
rem SecureAPlus Freemium (SG) - https://www.secureage.com/products/endpoint-protection-platform
rem VoodooShield (US) - https://voodooshield.com

rem Browser Extensions useful against (99% malware comes via an email or a browser)
rem CDN (Chrome/Firefox/Opera) - https://decentraleyes.org
rem Coinhive, Malware and Popups (Chrome/Firefox/Opera) - https://add0n.com/popup-blocker.html
rem Cookie Warnings (Chrome/Firefox/Opera) - https://www.i-dont-care-about-cookies.eu
rem Filter Lists - https://filterlists.com - https://github.com/EnergizedProtection/block#packs
rem Malware (Chrome/Firefox/Opera) - https://www.bitdefender.com/solutions/trafficlight.html
rem Malware (Chrome/Firefox) - https://www.malwarebytes.com/browserguard
rem Phishing (Chrome/Firefox/Opera) - https://www.netcraft.com/apps/browser
rem Punycode Domains (Chrome/Firefox/Opera) - https://github.com/AykutCevik/IDN-Safe

rem Cleanup software
rem Driver Store Explorer - https://github.com/lostindark/DriverStoreExplorer/releases
rem HiBit Uninstaller - https://hibitsoft.ir
rem Wise Disk Cleaner - https://www.wisecleaner.com/wise-disk-cleaner.html
rem Wise Registry Cleaner - https://www.wisecleaner.com/wise-registry-cleaner.html

rem Firewall software
rem FortKnox Firewall (SK) - http://fortknox-firewall.com
rem Zone Alarm Firewall (IL) - https://www.zonealarm.com/software/free-firewall

rem Firewall software using Windows Firewall
rem Glasswire (US) - https://www.glasswire.com
rem simplewall (US) - https://www.henrypp.org/product/simplewall
rem Windows 10 Firewall Control (US) - https://www.sphinx-soft.com/Vista/order.html
rem Windows Firewall Control (US) - https://www.binisoft.org/wfc.php

rem Sandbox software
rem 360 Total Security Essential (CN) - https://www.360totalsecurity.com/en/features/360-total-security-essential
rem Shade Sandbox (US) - https://www.shadesandbox.com

rem Security cleanup software (portable on-demand scanners, some still leave traces/drivers)
rem Antivirus Rescue Disks - https://www.techradar.com/in/best/best-antivirus-rescue-disk
rem AdwCleaner (US) - https://www.malwarebytes.com/adwcleaner/
rem Dr.Web CureIt (RU) - https://free.drweb.com/download+cureit+free
rem Emsisoft Emergency Kit (NZ) - https://www.emsisoft.com/en/home/emergencykit
rem Kaspersky TDSSKiller (RU) - https://usa.kaspersky.com/downloads/tdsskiller
rem Kaspersky Virus Removal Tool (RU) - https://www.kaspersky.com/downloads/thank-you/free-virus-removal-tool
rem MWAV (IN) - https://escanav.com/en/mwav-tools/download-free-antivirus-toolkit.asp
rem RKill (BleepingComputer) - https://www.bleepingcomputer.com/download/rkill/

rem Security cleanup software (online/updatable on-demand scanners)
rem ESET Online Scanner (SK) - https://www.eset.com/us/home/online-scanner
rem F-Secure Online Scanner (US) - https://www.f-secure.com/en/home/free-tools/online-scanner
rem HitmanPro (UK) - https://www.softpedia.com/get/Internet/Popup-Ad-Spyware-Blockers/Hitman-Pro.shtml
rem Norton Power Eraser (US) - https://support.norton.com/sp/static/external/tools/npe.html
rem Panda Cloud Cleaner (ES) - https://www.pandasecurity.com/en-us/homeusers/solutions/cloud-cleaner
rem Trend Micro HouseCall (US) - https://www.trendmicro.com/en_us/forHome/products/housecall.html

rem Software
rem Application Updates / Patch My PC - https://patchmypc.com
rem Bandwidth Meter / NetTraffic - https://www.venea.net/web/nettraffic
rem Bootable USB / Universal USB Installer - https://www.pendrivelinux.com/universal-usb-installer-easy-as-1-2-3
rem Bootloader / EasyBCD - https://www.softpedia.com/get/System/OS-Enhancements/EasyBCD.shtml
rem Bootloader / EasyUEFI - https://www.softpedia.com/get/System/Boot-Manager-Disk/EasyUEFI.shtml
rem Browser / TOR - https://www.torproject.org - Set Settings to Safest to disable all javascripts for max privacy!
rem Cloud Backup / IceDrive - https://icedrive.net/plans
rem Cloud Backup / PolarBackup - https://www.polarbackup.com/#pricing
rem Compact/Compress Files / Compact GUI - https://github.com/ImminentFate/CompactGUI
rem Computer Management / NirLauncher - https://launcher.nirsoft.net
rem CPU Info / CPU-Z - https://www.cpuid.com/softwares/cpu-z.html
rem CPU Test / Prime95 - https://www.mersenne.org/download
rem Data Recovery / DMDE Free Edition - https://dmde.com/download.html - https://www.techradar.com/how-to/computing/how-to-recover-lost-or-deleted-files-1307921/2
rem Data Recovery / EaseUS Data Recovery Wizard - https://www.easeus.com/datarecoverywizard/free-data-recovery-software.htm
rem Directx 9.0 Runtimes / DirectX Redistributable June 2010 - https://www.softpedia.com/get/System/OS-Enhancements/DirectX-9.0c-Redistributable.shtml
rem Disc to MKV / MakeMKV Beta - https://www.makemkv.com/download / Key - https://www.makemkv.com/forum2/viewtopic.php?f=5&t=1053
rem Disk Info / CrystalDiskInfo - https://crystalmark.info/en/software/crystaldiskinfo
rem Disk Scan / HDDScan - https://hddscan.com
rem Disk Space Usage / WizTree - https://wiztreefree.com
rem Disk Speed Test / CCSIO Benchmark - https://ccsiobench.com
rem Disk Surface Test / Macrorit Disk Scanner - https://macrorit.com/disk-surface-test/disk-surface-test.html
rem Driver Updates / Driver Easy - https://www.drivereasy.com
rem eMail Client / POP Peeper - https://www.esumsoft.com/products/pop-peeper
rem eMail Client Browser Extension / Checker Plus for Gmail - https://chrome.google.com/webstore/detail/checker-plus-for-gmail/oeopbcgkkoapgobdbedcemjljbihmemj
rem File Archiver / 7-zip - https://www.7-zip.org
rem Folder View Globally Set / WinSetView - https://github.com/brake4bots/WinSetView
rem GPU Info / GPU-Z - https://www.techpowerup.com/gpuz
rem GPU Test / Furmark - https://geeks3d.com/furmark
rem Hardware Information / HWiNFO - https://www.hwinfo.com/download.php
rem Hardware Monitor / HWMonitor - https://www.cpuid.com/softwares/hwmonitor.html
rem Image Viewer / XnView - https://www.xnview.com/en/xnview/#downloads
rem Media Player / PotPlayer - https://daumpotplayer.com
rem NET 3.5 Feature Installer for Windows 10 x86/x64 - https://github.com/abbodi1406/dotNetFx35W10/releases
rem Network Optimization / TCP Optimizer - https://www.speedguide.net/downloads.php
rem Network Settings Manager / NetSetMan - https://www.netsetman.com/en/freeware
rem Office Suite / FreeOffice - https://www.freeoffice.com/en/freeoffice
rem Partition Manager / Macrorit Partition Expert - https://macrorit.com/partition-magic-manager/free-edition.html
rem Password Manager (Offline) / KeePass Professional Edition - https://keepass.info/download.html
rem Password Manager (Online) / Bitwarden - https://bitwarden.com
rem PDF Editor / FreePDF - https://www.getfreepdf.com
rem PDF Viewer / Sumatra PDF - https://www.sumatrapdfreader.org/free-pdf-reader.html
rem Performance / LatencyMon - https://www.resplendence.com/latencymon
rem Performance / Process Lasso - https://bitsum.com
rem Performance / Windows System Timer Tool - https://vvvv.org/contribution/windows-system-timer-tool
rem Permissions / Reset permissions/Take Ownership - http://lallouslab.net/2013/08/26/resetting-ntfs-files-permission-in-windows-graphical-utility/
rem Process Monitor / Process Monitor - https://docs.microsoft.com/en-us/sysinternals/downloads/procmon
rem Radio / Audials Radio - https://audials.com/en/radio
rem RAM Fix / Intelligent standby list cleaner (+Timer Resolution) - https://www.wagnardsoft.com/content/intelligent-standby-list-cleaner-v1000-released
rem RAM Free / Mem Reduct - https://www.henrypp.org/product/memreduct
rem RAM Disk / AMD Radeon RAMDisk (4GB) - https://www.radeonramdisk.com/software_downloads.php
rem RAM Disk / ImDisk Toolkit (Unlimited/Unsigned) - https://sourceforge.net/projects/imdisk-toolkit
rem RAM Test / Memtest (run one process per each 2GB) - https://hcidesign.com/memtest
rem Remote Support / TeamViewer - https://www.teamviewer.com/en/download/windows
rem Remove Locked File/Folder / ThisIsMyFile - https://www.softwareok.com/?seite=Freeware/ThisIsMyFile
rem Screen Recorder / FlashBack Express - https://www.flashbackrecorder.com/express
rem Search / UltraSearch - https://www.jam-software.com/ultrasearch_free
rem Settings / ControlUWP - https://github.com/builtbybel/control-uwp/releases
rem SoundCard Third Party Drivers / ASUS, C-Media and Creative - https://danielkawakami.blogspot.com
rem Startup Manager / Autoruns - https://docs.microsoft.com/en-us/sysinternals/downloads/autoruns
rem Streaming / Streamlabs OBS - https://streamlabs.com
rem System Imaging / EaseUS Todo Backup - https://www.easeus.com/backup-software/tb-free.html
rem System Restore / RollBack Rx Home Edition - https://horizondatasys.com/rollback-rx-time-machine/rollback-rx-home
rem Task Manager / Process Hacker - https://wj32.org/processhacker/nightly.php
rem Undervolting / ThrottleStop - https://www.techpowerup.com/download/techpowerup-throttlestop
rem Uninstaller / HiBit Uninstaller - https://hibitsoft.ir - https://www.techsupportalert.com/best-free-program-un-installer.htm
rem Visual C++ / AIO Repack - https://github.com/abbodi1406/vcredist/releases
rem Visual C++ / Latest Visual C++ Downloads - https://support.microsoft.com/en-au/help/2977003/the-latest-supported-visual-c-downloads
rem VM Android / BlueStacks - https://www.bluestacks.com
rem Wallpaper - Live / Wallpaper Engine - https://store.steampowered.com/app/431960
rem Windows Tweaks / Ultimate Windows Tweaker - https://www.thewindowsclub.com/ultimate-windows-tweaker-4-windows-10
rem Windows Tweaks / Winaero Tweaker - https://winaero.com/winaero-tweaker
rem Windows Updates / Windows Update Manager - https://github.com/DavidXanatos/wumgr/releases


rem ============= Remove various files, folders, startup entries and policies ==============


rem Take ownership of Desktop
takeown /s %computername% /u %username% /f "%SystemDrive%\Users\Public\Desktop" /r /d y
icacls "%SystemDrive%\Users\Public\Desktop" /inheritance:r
icacls "%SystemDrive%\Users\Public\Desktop" /inheritance:e /grant:r %username%:(OI)(CI)F /t /l /q /c
takeown /s %computername% /u %username% /f "%USERPROFILE%\Desktop" /r /d y
icacls "%USERPROFILE%\Desktop" /inheritance:r
icacls "%USERPROFILE%\Desktop" /inheritance:e /grant:r %username%:(OI)(CI)F /t /l /q /c
takeown /s %computername% /u %username% /f "Z:\Desktop" /r /d y
icacls "Z:\Desktop" /inheritance:r
icacls "Z:\Desktop" /inheritance:e /grant:r %username%:(OI)(CI)F /t /l /q /c

rem Flush DNS Cache
ipconfig /flushdns

rem Remove user account
net user defaultuser0 /delete
net user defaultuser100000 /delete

rem Remove random files/folders - https://github.com/MoscaDotTo/Winapp2/blob/master/Winapp3/Winapp3.ini
del "%AppData%\Microsoft\Windows\Recent\*" /s /f /q
del "%SystemDrive%\AMFTrace.log" /s /f /q
del "%WINDIR%\System32\sru\*" /s /f /q
rd "%SystemDrive%\AMD" /s /q
rd "%SystemDrive%\OneDriveTemp" /s /q
rd "%SystemDrive%\PerfLogs" /s /q
rd "%SystemDrive%\Recovery" /s /q
rd "%ProgramData%\Microsoft\Diagnosis" /s /q
rd "%ProgramData%\Microsoft\DiagnosticLogCSP" /s /q
rd "%ProgramData%\Microsoft\Network" /s /q
rd "%ProgramData%\Microsoft\Search" /s /q
rd "%ProgramData%\Microsoft\SmsRouter" /s /q
rd "%AppData%\AMD" /s /q
rd "%AppData%\ArtifexMundi\SparkPromo" /s /q
rd "%LocalAppData%\Microsoft\Internet Explorer" /s /q
rd "%LocalAppData%\Microsoft\Windows\AppCache" /s /q
rd "%LocalAppData%\Microsoft\Windows\History" /s /q
rd "%LocalAppData%\Microsoft\Windows\IECompatCache" /s /q
rd "%LocalAppData%\Microsoft\Windows\IECompatUaCache" /s /q
rd "%LocalAppData%\Microsoft\Windows\INetCache" /s /q
rd "%LocalAppData%\Microsoft\Windows\INetCookies" /s /q
rd "%LocalAppData%\Microsoft\Windows\WebCache" /s /q
rd "%LocalAppData%\Packages\Microsoft.Windows.Cortana_cw5n1h2txyewy\AppData\Indexed DB" /s /q
rd "%LocalAppData%\slobs-client-updater" /s /q
rd "%LocalAppData%\Steam\htmlcache" /s /q
rd "%LocalAppData%\Temp" /s /q
rd "C:\Users\Mikai\3D Objects" /s /q
rd "C:\Users\Mikai\Favorites" /s /q
rd "C:\Users\Mikai\Links" /s /q
rd "C:\Users\Mikai\Music" /s /q
rd "C:\Users\Mikai\Searches" /s /q
rd "D:\OneDriveTemp" /s /q

rem Remove/Rebuild Font Cache
del "%WinDir%\ServiceProfiles\LocalService\AppData\Local\FontCache\*FontCache*"/s /f /q
del "%WinDir%\System32\FNTCACHE.DAT" /s /f /q

rem Remove Windows Powershell (to restore run "sfc /scannow")
rem https://threatpost.com/fileless-malware-critical-ioc-threats-2020/159422
rem https://blog.netspi.com/15-ways-to-bypass-the-powershell-execution-policy
rem https://www.mrg-effitas.com/research/current-state-of-malicious-powershell-script-blocking
rem https://enigma0x3.net/2016/08/15/fileless-uac-bypass-using-eventvwr-exe-and-registry-hijacking
taskkill /im PowerShell.exe /f
taskkill /im PowerShell_ISE.exe /f
takeown /s %computername% /u %username% /f "%ProgramFiles%\WindowsPowerShell" /r /d y
icacls "%ProgramFiles%\WindowsPowerShell" /inheritance:r /grant:r %username%:(OI)(CI)F /t /l /q /c
rd "%ProgramFiles%\WindowsPowerShell" /s /q
takeown /s %computername% /u %username% /f "%ProgramFiles(x86)%\WindowsPowerShell" /r /d y
icacls "%ProgramFiles(x86)%\WindowsPowerShell" /grant:r %username%:(OI)(CI)F /t /l /q /c
rd "%ProgramFiles(x86)%\WindowsPowerShell" /s /q
takeown /s %computername% /u %username% /f "%WinDir%\System32\WindowsPowerShell" /r /d y
icacls "%WinDir%\System32\WindowsPowerShell" /grant:r %username%:(OI)(CI)F /t /l /q /c
rd "%WinDir%\System32\WindowsPowerShell" /s /q
takeown /s %computername% /u %username% /f "%WinDir%\SysWOW64\WindowsPowerShell" /r /d y
icacls "%WinDir%\SysWOW64\WindowsPowerShell" /grant:r %username%:(OI)(CI)F /t /l /q /c
rd "%WinDir%\SysWOW64\WindowsPowerShell" /s /q

rem Remove Startup Folders
takeown /s %computername% /u %username% /f "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Startup"
icacls "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Startup" /grant:r %username%:(OI)(CI)F /t /l /q /c
del "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Startup\*" /s /f /q
del "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup\*" /s /f /q

rem Remove random reg keys (Startup/Privacy/Policies/Malware related)
reg delete "HKCU\Software\Classes\ms-settings\shell\open" /f
reg delete "HKCU\Software\Microsoft\Command Processor" /v "AutoRun" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\WordWheelQuery" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\PackagedAppXDebug" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\Windows" /v "Load" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Shell" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\Shell" /f
reg delete "HKCU\Software\Policies" /f
reg delete "HKLM\Software\Microsoft\Command Processor" /v "AutoRun" /f
reg delete "HKLM\Software\Microsoft\Policies" /f
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\AppModelUnlock" /f
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects" /f
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\SharedTaskScheduler" /f
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\ShellExecuteHooks" /f
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved" /f
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies" /f
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /f
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce" /f
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnceEx" /f
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\ShellServiceObjectDelayLoad" /f
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Font Drivers" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Terminal Server" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Windows" /v "AppInit_DLLs" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Shell" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Userinit" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "VMApplet" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\AlternateShells" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\Shell" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\Taskman" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\Userinit" /f
reg delete "HKLM\Software\Policies" /f
reg delete "HKLM\Software\WOW6432Node\Microsoft\Policies" /f
reg delete "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects" /f
reg delete "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Run" /f
reg delete "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\RunOnce" /f
reg delete "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\RunOnceEx" /f
reg delete "HKLM\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Policies" /f
reg delete "HKLM\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate" /f
reg delete "HKLM\Software\Wow6432Node\Microsoft\Windows NT\CurrentVersion\Windows" /v "AppInit_DLLs" /f
reg delete "HKLM\Software\Wow6432Node\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Shell" /f
reg delete "HKLM\Software\Wow6432Node\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Userinit" /f
reg delete "HKLM\Software\Wow6432Node\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "VMApplet" /f
reg delete "HKLM\Software\Wow6432Node\Microsoft\Windows NT\CurrentVersion\Winlogon\AlternateShells" /f
reg delete "HKLM\Software\Wow6432Node\Microsoft\Windows NT\CurrentVersion\Winlogon\Shell" /f
reg delete "HKLM\Software\Wow6432Node\Microsoft\Windows NT\CurrentVersion\Winlogon\Taskman" /f
reg delete "HKLM\Software\Wow6432Node\Microsoft\Windows NT\CurrentVersion\Winlogon\Userinit" /f
reg delete "HKLM\Software\WOW6432Node\Policies" /f
reg delete "HKLM\System\CurrentControlSet\Control\Keyboard Layout" /v "Scancode Map" /f
reg delete "HKLM\System\CurrentControlSet\Control\SafeBoot" /v "AlternateShell" /f
reg delete "HKLM\System\CurrentControlSet\Control\SecurePipeServers\winreg" /f
reg delete "HKLM\System\CurrentControlSet\Control\Session Manager" /v "BootExecute" /f
reg delete "HKLM\System\CurrentControlSet\Control\Session Manager" /v "Execute" /f
reg delete "HKLM\System\CurrentControlSet\Control\Session Manager" /v "SETUPEXECUTE" /f
reg delete "HKLM\System\CurrentControlSet\Control\Terminal Server\Wds\rdpwd" /v "StartupPrograms" /f


rem =========================== Restore essential startup entries ==========================


rem Run bcdedit command to check for the current status / Yes = True / No = False
rem https://docs.microsoft.com/en-us/windows-hardware/drivers/devtest/bcdedit--set?
bcdedit /deletevalue {current} safeboot
bcdedit /deletevalue {current} safebootalternateshell
bcdedit /deletevalue {current} removememory
bcdedit /deletevalue {current} truncatememory
bcdedit /deletevalue {current} useplatformclock
bcdedit /deletevalue {default} safeboot
bcdedit /deletevalue {default} safebootalternateshell
bcdedit /deletevalue {default} removememory
bcdedit /deletevalue {default} truncatememory
bcdedit /deletevalue {default} useplatformclock
bcdedit /set {bootmgr} displaybootmenu no
bcdedit /set {current} advancedoptions false
bcdedit /set {current} bootems no
bcdedit /set {current} bootmenupolicy legacy
bcdedit /set {current} bootstatuspolicy IgnoreAllFailures
bcdedit /set {current} disabledynamictick yes
bcdedit /set {current} lastknowngood yes
bcdedit /set {current} recoveryenabled no
bcdedit /set {default} advancedoptions false
bcdedit /set {default} bootems no
bcdedit /set {default} bootmenupolicy legacy
bcdedit /set {default} bootstatuspolicy IgnoreAllFailures
bcdedit /set {default} disabledynamictick yes
bcdedit /set {default} lastknowngood yes
bcdedit /set {default} recoveryenabled no

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "Discord" /t REG_SZ /d "%LocalAppData%\Discord\app-0.0.309\Discord.exe --start-minimized" /f
rem reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "OneDrive" /t REG_SZ /d "\"%ProgramFiles% (x86)\Microsoft OneDrive\OneDrive.exe\" /background" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /v "EvtMgr6" /t REG_SZ /d "%ProgramFiles%\Logitech\SetPointP\SetPoint.exe" /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Shell" /t REG_SZ /d "explorer.exe" /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Userinit" /t REG_SZ /d "C:\Windows\System32\userinit.exe," /f
reg add "HKLM\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Run" /v "PSUAMain" /t REG_SZ /d "\"%ProgramFiles% (x86)\Panda Security\Panda Security Protection\PSUAMain.exe\" /LaunchSysTray" /f
reg add "HKLM\Software\Wow6432Node\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Shell" /t REG_SZ /d "explorer.exe" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager" /v "BootExecute" /t REG_MULTI_SZ /d "autocheck autochk *" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager" /v "SETUPEXECUTE" /t REG_MULTI_SZ /d "" /f


rem =================================== Software Setup =====================================


rem 7-zip
reg add "HKCU\Software\7-Zip\Compression" /v "Archiver" /t "REG_SZ" /d "7z" /f
reg add "HKCU\Software\7-Zip\Compression" /v "Level" /t "REG_DWORD" /d "9" /f
reg add "HKCU\Software\7-Zip\Compression\Options\7z" /v "Level" /t "REG_DWORD" /d "9" /f
reg add "HKCU\Software\7-Zip\Options" /v "CascadedMenu" /t "REG_DWORD" /d "1" /f
reg add "HKCU\Software\7-Zip\Options" /v "ContextMenu" /t "REG_DWORD" /d "263" /f

rem Audials Radio
taskkill /im AudialsNotifier.exe /f
del "%ProgramFiles(x86)%\Audials\Audials 2021\AudialsNotifier.exe" /s /f /q

rem EaseUS Todo Backup Context Menu Removal
reg delete "HKLM\Software\Classes\*\shellex\ContextMenuHandlers\SimpleShlExt" /f
reg delete "HKLM\Software\Classes\Drive\shellex\ContextMenuHandlers\SimpleShlExt" /f
reg delete "HKLM\Software\Classes\Directory\shellex\ContextMenuHandlers\SimpleShlExt" /f

rem Gihosoft TubeGet
reg add "HKCU\Software\Gihosoft\TubeGet" /v "DefaultOutputFolder" /t REG_SZ /d "Z:/Desktop" /f
reg add "HKCU\Software\Gihosoft\TubeGet" /v "DownloadTempFolder" /t REG_SZ /d "Z:/TEMP/Gihosoft/temp" /f
reg delete "HKCU\Software\Gihosoft\TubeGet" /v "Net_DayLink5Times" /f

rem Logitech Setpoint
taskkill /im LogiAppBroker.exe /f
taskkill /im LogitechUpdate.exe /f
taskkill /im LULnchr.exe /f
taskkill /im KHALMNPR.exe /f
taskkill /im Setpoint.exe /f
del "%ProgramFiles%\Logitech\SetPointP\LogiAppBroker.exe" /s /f /q
del "%ProgramFiles%\Logitech\SetPointP\msvcp110.dll" /s /f /q
del "%ProgramFiles%\Logitech\SetPointP\msvcr110.dll" /s /f /q
rd "%ProgramFiles%\Common Files\LogiShrd\sp6\LU1" /s /q
rd "%ProgramFiles%\Common Files\LogiShrd\Unifying\LU" /s /q

rem Microsoft Edge Update Disabled
taskkill /im MSEdge.exe /f
taskkill /im MicrosoftEdgeUpdate.exe /f
rd "%ProgramFiles(x86)%\Microsoft\EdgeUpdate" /s /q

rem Notepad
reg add "HKCU\Software\Microsoft\Notepad" /v "iWindowPosDX" /t REG_DWORD /d "1934" /f
reg add "HKCU\Software\Microsoft\Notepad" /v "iWindowPosDY" /t REG_DWORD /d "651" /f
reg add "HKCU\Software\Microsoft\Notepad" /v "iWindowPosX" /t REG_DWORD /d "4294967289" /f
reg add "HKCU\Software\Microsoft\Notepad" /v "iWindowPosY" /t REG_DWORD /d "436" /f

rem Regedit
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit" /v "View" /t REG_BINARY /d "2c0000000000000001000000fffffffffffffffffffffffffffffffff8ffffff0000000086070000ee0100002f01000027010000780000002502000003000000" /f

rem TruckersMP
rem takeown /s %computername% /u %username% /f "%ProgramData%\TruckersMP" /r /d y
takeown /f "%ProgramData%\TruckersMP" /a
reg add "HKLM\Software\TruckersMP" /v "InstallDir" /t REG_SZ /d "D:\TruckersMP Launcher" /f
reg add "HKLM\Software\TruckersMP" /v "InstallLocationETS2" /t REG_SZ /d "D:\Steam\steamapps\common\Euro Truck Simulator 2" /f

rem XnView
reg add "HKCU\Software\XnView" /v "UseRegistry" /t "REG_DWORD" /d "1" /f
reg add "HKCU\Software\XnView\Browser" /v "ShowToolTips" /t "REG_DWORD" /d "0" /f
reg add "HKCU\Software\XnView\Browser" /v "StartupDirectory" /t "REG_SZ" /d "Z:\Desktop" /f
reg add "HKCU\Software\XnView\Browser" /v "StartupIn" /t "REG_DWORD" /d "2" /f
reg add "HKCU\Software\XnView\Capture" /v "Delay" /t "REG_DWORD" /d "2" /f
reg add "HKCU\Software\XnView\Capture" /v "Directory" /t "REG_SZ" /d "Z:\Desktop" /f
reg add "HKCU\Software\XnView\Capture" /v "HotKey" /t "REG_DWORD" /d "9" /f
reg add "HKCU\Software\XnView\Capture" /v "IncludeCursor" /t "REG_DWORD" /d "0" /f
reg add "HKCU\Software\XnView\Capture" /v "Method" /t "REG_DWORD" /d "0" /f
reg add "HKCU\Software\XnView\Capture" /v "Multiple" /t "REG_DWORD" /d "1" /f
reg add "HKCU\Software\XnView\Capture" /v "SaveIntoFile" /t "REG_DWORD" /d "1" /f
reg add "HKCU\Software\XnView\Start" /v "MaximizeXnviewAtStartup" /t "REG_DWORD" /d "1" /f
reg add "HKCU\Software\XnView\Start" /v "OnlyOneInstance" /t "REG_DWORD" /d "1" /f
reg add "HKCU\Software\XnView\Start" /v "PathSave" /t "REG_SZ" /d "Z:\Desktop" /f
reg add "HKCU\Software\XnView\Start" /v "SavePosition" /t "REG_DWORD" /d "0" /f
reg add "HKCU\Software\XnView\Start" /v "ShowSaveDlg" /t "REG_DWORD" /d "0" /f


rem =========================== Windows Defender Security Centre ===========================
rem -------------------------------- App & browser control ---------------------------------

rem Off - Disable Windows SmartScreen / On - Enable Windows SmartScreen 
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d "Off" /f

rem 0 - Disable SmartScreen Filter in Microsoft Edge / 1 - Enable
reg add "HKCU\Software\Microsoft\Edge\SmartScreenEnabled" /ve /t REG_DWORD /d "0" /f

rem 0 - Disable SmartScreen PUA in Microsoft Edge / 1 - Enable
reg add "HKCU\Software\Microsoft\Edge\SmartScreenPuaEnabled" /ve /t REG_DWORD /d "0" /f

rem 0 - Disable Windows SmartScreen for Windows Store Apps / 1 - Enable
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t "REG_DWORD" /d "0" /f

rem ________________________________________________________________________________________
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t "REG_DWORD" /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControl" /t REG_SZ /d "Anywhere" /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControlEnabled" /t "REG_DWORD" /d "0" /f

rem Remove Smartscreen (to restore run "sfc /scannow")
rem takeown /s %computername% /u %username% /f "%WinDir%\System32\smartscreen.exe"
rem icacls "%WinDir%\System32\smartscreen.exe" /grant:r %username%:F
rem taskkill /im smartscreen.exe /f
rem del "%WinDir%\System32\smartscreen.exe" /s /f /q


rem =========================== Windows Defender Security Center ===========================
rem ----------------------------- Device performance & health ------------------------------

rem ________________________________________________________________________________________
rem Specifies how the System responds when a user tries to install device driver files that are not digitally signed / 00 - Ignore / 01 - Warn / 02 - Block
reg add "HKLM\Software\Microsoft\Driver Signing" /v "Policy" /t REG_BINARY /d "01" /f

rem Prevent device metadata retrieval from the Internet / Do not automatically download manufacturers’ apps and custom icons available for your devices
rem reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "0" /f 
rem sc config DsmSvc start= disabled

rem Do you want Windows to download driver Software / 0 - Never / 1 - Allways / 2 - Install driver Software, if it is not found on my computer
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d "0" /f

rem Specify search order for device driver source locations 
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\DriverSearching" /v "DontSearchWindowsUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\DriverSearching" /v "DriverUpdateWizardWuSearchEnabled" /t REG_DWORD /d "0" /f

rem 1 - Disable driver updates in Windows Update
reg add "HKLM\Software\Microsoft\PolicyManager\current\device\Update" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\PolicyManager\default\device\Update" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\WindowsUpdate\UX\Settings" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f

rem Avoid the driver signing enforcement for EV cert / SHA256 Microsoft Windows signed drivers which is further enforced via Secure Boot
rem reg add "HKLM\System\ControlSet001\Control\CI\Policy" /v "UpgradedSystem" /t REG_DWORD /d "1" /f


rem =========================== Windows Defender Security Center ===========================
rem ---------------------------- Firewall & network protection -----------------------------

rem Enable Windows Firewall / AllProfiles / CurrentProfile / DomainProfile / PrivateProfile / PublicProfile
rem https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc771920(v=ws.10)?
netsh advfirewall set allprofiles state on

rem Block all inbound network traffic and all outbound except allowed apps
netsh advfirewall set DomainProfile firewallpolicy blockinboundalways,blockoutbound
netsh advfirewall set PrivateProfile firewallpolicy blockinboundalways,blockoutbound
netsh advfirewall set PublicProfile firewallpolicy blockinboundalways,blockoutbound

rem Remove All Windows Firewall Rules
netsh advfirewall firewall delete rule name=all
rem reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Defaults\FirewallPolicy\FirewallRules" /f
rem reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules" /f
rem reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\RestrictedInterfaces" /f
rem reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\RestrictedServices" /f

rem Windows Firewall Rules
netsh advfirewall firewall add rule name="Audials TCP" dir=out action=allow protocol=TCP remoteport=80,443,1025-65535 program="%ProgramFiles(x86)%\Audials\Audials 2021\Audials.exe"
netsh advfirewall firewall add rule name="Audials UDP" dir=out action=allow protocol=UDP remoteport=5353 remoteip=224.0.0.252 program="%ProgramFiles(x86)%\Audials\Audials 2021\Audials.exe"
netsh advfirewall firewall add rule name="COD MW2 TCP" dir=out action=allow protocol=TCP remoteport=27015-27030,27038,27050 program="D:\Steam\steamapps\common\Call of Duty Modern Warfare 2\iw4sp.exe"
netsh advfirewall firewall add rule name="COD MW2 UDP" dir=out action=allow protocol=UDP remoteport=1025-65535 program="D:\Steam\steamapps\common\Call of Duty Modern Warfare 2\iw4sp.exe"
netsh advfirewall firewall add rule name="COD MW3 TCP" dir=out action=allow protocol=TCP remoteport=3074 program="D:\Steam\steamapps\common\Call of Duty Modern Warfare 3\iw5sp.exe"
netsh advfirewall firewall add rule name="COD MW3 UDP" dir=out action=allow protocol=UDP remoteport=1025-65535 program="D:\Steam\steamapps\common\Call of Duty Modern Warfare 3\iw5sp.exe"
netsh advfirewall firewall add rule name="Discord TCP" dir=out action=allow protocol=TCP remoteip=35.184.0.0-35.191.255.255,162.158.0.0-162.159.255.255 remoteport=443 program="%LOCALAPPDATA%\Discord\app-0.0.309\Discord.exe"
netsh advfirewall firewall add rule name="Discord UDP" dir=out action=allow protocol=UDP remoteport=1025-65535 program="%LOCALAPPDATA%\Discord\app-0.0.309\Discord.exe"
netsh advfirewall firewall add rule name="Discord Update TCP" dir=out action=allow protocol=TCP remoteip=35.184.0.0-35.191.255.255,162.158.0.0-162.159.255.255 remoteport=443 program="%LOCALAPPDATA%\Discord\Update.exe"
netsh advfirewall firewall add rule name="DriverEasy TCP" dir=out action=allow protocol=TCP remoteport=443 program="%ProgramFiles%\Easeware\DriverEasy\DriverEasy.exe"
netsh advfirewall firewall add rule name="ETS2 TCP" dir=out action=allow protocol=TCP remoteport=80,443,4455 program="D:\Steam\steamapps\common\Euro Truck Simulator 2\bin\win_x64\eurotrucks2.exe"
netsh advfirewall firewall add rule name="ETS2 UDP" dir=out action=allow protocol=UDP remoteport=1025-65535 program="D:\Steam\steamapps\common\Euro Truck Simulator 2\bin\win_x64\eurotrucks2.exe"
netsh advfirewall firewall add rule name="ETS2 MP TCP" dir=out action=allow protocol=TCP remoteip=104.16.0.0-104.31.255.255 remoteport=80 program="D:\Euro Truck Simulator 2\TruckersMP Launcher\Launcher.exe"
netsh advfirewall firewall add rule name="ETS2 MP UDP" dir=out action=allow protocol=UDP remoteip=0.0.0.0 remoteport=1025-65535 program="D:\Euro Truck Simulator 2\TruckersMP Launcher\Launcher.exe"
netsh advfirewall firewall add rule name="Google Chrome HTTPS" dir=out action=allow protocol=TCP remoteport=443 program="%ProgramFiles%\Google\Chrome\Application\chrome.exe"
netsh advfirewall firewall add rule name="Google Chrome QUIC" dir=out action=allow protocol=UDP remoteport=80,443 program="%ProgramFiles%\Google\Chrome\Application\chrome.exe"
netsh advfirewall firewall add rule name="Google Update TCP" dir=out action=allow protocol=TCP remoteip=142.250.0.0-142.251.255.255,172.217.0.0-172.217.255.255,216.58.192.0-216.58.223.255 remoteport=443 program="%ProgramFiles(x86)%\Google\Update\GoogleUpdate.exe"
netsh advfirewall firewall add rule name="Hitman TCP" dir=out action=allow protocol=TCP remoteip=40.64.0.0-40.71.255.255,40.74.0.0-40.125.127.255,51.140.0.0-51.145.255.255,52.224.0.0-52.255.255.255,104.40.0.0-104.47.255.255,191.239.203.0 remoteport=443 program="D:\Steam\steamapps\common\HITMAN2\dx12Retail\HITMAN2.exe"
netsh advfirewall firewall add rule name="IceDrive TCP" dir=out action=allow protocol=TCP remoteip=37.58.48.0-37.58.55.255,46.165.216.0-46.165.223.255,46.165.240.0-46.165.247.255,78.159.96.0-78.159.103.255,78.159.112.0-78.159.115.255,84.16.224.0-84.16.255.255,104.16.0.0-104.31.255.255,116.202.0.0-116.203.255.255,172.64.0.0-172.71.255.255,178.162.206.0-178.162.207.255,178.162.216.0-178.162.219.255 remoteport=443 program="Z:\Temp\IcedrivePortable\Icedrive.exe"
netsh advfirewall firewall add rule name="IP Info TCP" dir=out action=allow protocol=TCP remoteport=43 program="D:\Software\Temp\Soft\Windows Repair Toolbox\Downloads\NirLauncher\NirSoft\ipnetinfo.exe"
netsh advfirewall firewall add rule name="Microsoft OneDrive TCP" dir=out action=allow protocol=TCP remoteip=13.64.0.0-13.107.255.255,20.180.0.0-20.191.255.255,40.74.0.0-40.125.127.255,40.126.0.0-40.126.63.255,51.103.0.0-51.105.255.255,52.96.0.0-52.115.255.255,52.132.0.0-52.143.255.255 remoteport=443 program="%ProgramFiles(x86)%\Microsoft OneDrive\OneDrive.exe"
netsh advfirewall firewall add rule name="Microsoft OneDrive Setup TCP" dir=out action=allow protocol=TCP remoteip=13.64.0.0-13.107.255.255,20.180.0.0-20.191.255.255,40.74.0.0-40.125.127.255,40.126.0.0-40.126.63.255,51.103.0.0-51.105.255.255,52.96.0.0-52.115.255.255,52.132.0.0-52.143.255.255 remoteport=443 program="%ProgramFiles(x86)%\Microsoft OneDrive\Update\OneDriveSetup.exe"
netsh advfirewall firewall add rule name="Microsoft OneDrive Settings TCP" dir=out action=allow protocol=TCP remoteip=13.64.0.0-13.107.255.255,20.180.0.0-20.191.255.255,40.74.0.0-40.125.127.255,40.126.0.0-40.126.63.255,51.103.0.0-51.105.255.255,52.96.0.0-52.115.255.255,52.132.0.0-52.143.255.255 remoteport=443 program="%ProgramFiles(x86)%\Microsoft OneDrive\21.046.0307.0001\FileCoAuth.exe"
netsh advfirewall firewall add rule name="Microsoft OneDrive Update TCP" dir=out action=allow protocol=TCP remoteip=2.18.232.0-2.18.235.255,52.132.0.0-52.143.255.255,168.61.0.0-168.63.255.255 remoteport=443 program="%ProgramFiles(x86)%\Microsoft OneDrive\OneDriveStandaloneUpdater.exe"
netsh advfirewall firewall add rule name="Microsoft Store TCP 80" dir=out action=allow protocol=TCP remoteip=2.18.232.0-2.18.235.255,23.192.0.0-23.223.255.255,93.184.220.0-93.184.223.255,104.64.0.0-104.127.255.255,184.24.0.0-184.31.255.255,184.50.0.0-184.51.255.255 remoteport=80 program="%ProgramFiles%\WindowsApps\Microsoft.WindowsStore_12101.1001.14.0_x64__8wekyb3d8bbwe\WinStore.App.exe"
netsh advfirewall firewall add rule name="Microsoft Store TCP 443" dir=out action=allow protocol=TCP remoteip=2.18.232.0-2.18.235.255,13.64.0.0-13.107.255.255,23.32.0.0-23.67.255.255,23.192.0.0-23.223.255.255,40.74.0.0-40.125.127.255,52.132.0.0-52.143.255.255,52.145.0.0-52.191.255.255,52.224.0.0-52.255.255.255,88.221.184.0-88.221.191.255,92.123.228.0-92.123.231.255,104.64.0.0-104.127.255.255,184.24.0.0-184.31.255.255,184.50.0.0-184.51.255.255 remoteport=443 program="%ProgramFiles%\WindowsApps\Microsoft.WindowsStore_12101.1001.14.0_x64__8wekyb3d8bbwe\WinStore.App.exe"
netsh advfirewall firewall add rule name="Microsoft Svchost DoH" dir=out action=allow protocol=TCP remoteip=9.9.9.9,149.112.112.112 remoteport=443 program="%WINDIR%\System32\svchost.exe"
netsh advfirewall firewall add rule name="Microsoft Svchost TCP 80" dir=out action=allow protocol=TCP remoteip=2.16.186.0-2.16.187.255,8.224.0.0-8.255.255.255,23.32.0.0-23.67.255.255,93.184.220.0-93.184.223.255,95.101.24.0-95.101.27.255,151.139.0.0-151.139.255.255,152.176.0.0-152.199.255.255,205.185.192.0-205.185.223.255 remoteport=80 program="%WINDIR%\System32\svchost.exe"
netsh advfirewall firewall add rule name="Microsoft Svchost TCP 443" dir=out action=allow protocol=TCP remoteip=13.64.0.0-13.107.255.255,20.33.0.0-20.128.255.255,20.180.0.0-20.191.255.255,23.32.0.0-23.67.255.255,40.64.0.0-40.71.255.255,40.74.0.0-40.125.127.255,40.126.0.0-40.126.63.255,51.103.0.0-51.105.255.255,51.124.0.0-51.124.255.255,51.136.0.0-51.138.255.255,52.132.0.0-52.143.255.255,52.145.0.0-52.191.255.255,52.224.0.0-52.255.255.255,104.64.0.0-104.127.255.255,111.221.29.0-111.221.29.255,142.250.0.0-142.251.255.255,184.24.0.0-184.31.255.255,184.50.0.0-184.51.255.255,191.232.0.0-191.235.255.255,204.79.195.0-204.79.197.255 remoteport=443 program="%WINDIR%\System32\svchost.exe"
netsh advfirewall firewall add rule name="Microsoft Svchost UDP 5353 Steam Friends" dir=out action=allow protocol=UDP remoteip=224.0.0.251 remoteport=5353 program="%WINDIR%\System32\svchost.exe"
netsh advfirewall firewall add rule name="Microsoft Sync TCP 80" dir=out action=allow protocol=TCP remoteip=93.184.220.0-93.184.223.255 remoteport=80 program="%WINDIR%\System32\SettingSyncHost.exe"
netsh advfirewall firewall add rule name="Microsoft Sync TCP 443" dir=out action=allow protocol=TCP remoteip=13.64.0.0-13.107.255.255,40.74.0.0-40.125.127.255,104.64.0.0-104.127.255.255 remoteport=443 program="%WINDIR%\System32\SettingSyncHost.exe"
netsh advfirewall firewall add rule name="Microsoft UAC TCP" dir=out action=allow protocol=TCP remoteip=93.184.220.0-93.184.223.255,151.139.0.0-151.139.255.255 remoteport=80,443 program="%WINDIR%\System32\consent.exe"
netsh advfirewall firewall add rule name="Microsoft Weather TCP" dir=out action=allow protocol=TCP remoteport=443 remoteip=52.224.0.0-52.255.255.255,104.64.0.0-104.127.255.255,204.79.195.0-204.79.197.255 program="%ProgramFiles%\WindowsApps\Microsoft.BingWeather_4.46.30621.0_x64__8wekyb3d8bbwe\Microsoft.Msn.Weather.exe"
netsh advfirewall firewall add rule name="OBS TCP" dir=out action=allow protocol=TCP remoteport=443,1935 program="%ProgramFiles%\Streamlabs OBS\resources\app.asar.unpacked\node_modules\obs-studio-node\obs64.exe"
netsh advfirewall firewall add rule name="OBS Browser TCP" dir=out action=allow protocol=TCP remoteport=443 program="%ProgramFiles%\Streamlabs OBS\Streamlabs OBS.exe"
netsh advfirewall firewall add rule name="OBS Browser UDP" dir=out action=allow protocol=UDP remoteport=5355 program="%ProgramFiles%\Streamlabs OBS\Streamlabs OBS.exe"
netsh advfirewall firewall add rule name="Panda AgentSvc TCP" dir=out action=allow protocol=TCP remoteip=2.16.106.0-2.16.107.255,2.16.186.0-2.16.187.255,52.145.0.0-52.191.255.255,93.184.220.0-93.184.223.255,137.135.0.0-137.135.255.255,168.61.0.0-168.63.255.255 remoteport=80,443 program="%ProgramFiles(x86)%\Panda Security\Panda Devices Agent\AgentSvc.exe"
netsh advfirewall firewall add rule name="Panda PSANHost TCP" dir=out action=allow protocol=TCP remoteip=2.16.106.0-2.16.107.255,2.16.186.0-2.16.187.255,2.21.242.0-2.21.242.255,23.192.0.0-23.223.255.255,91.216.218.0-91.216.218.255,95.101.24.0-95.101.27.255,137.135.0.0-137.135.255.255,192.0.32.0-192.0.47.255 remoteport=80,443 program="%ProgramFiles(x86)%\Panda Security\Panda Security Protection\PSANHost.exe"
netsh advfirewall firewall add rule name="Panda PSUAConsole TCP" dir=out action=allow protocol=TCP remoteip=40.64.0.0-40.71.255.255,93.184.220.0-93.184.223.255,142.250.0.0-142.251.255.255,172.217.0.0-172.217.255.255,216.58.192.0-216.58.223.255 remoteport=80,443 program="%ProgramFiles(x86)%\Panda Security\Panda Security Protection\PSUAConsole.exe"
netsh advfirewall firewall add rule name="Panda PSUAService TCP" dir=out action=allow protocol=TCP remoteip=13.32.0.0-13.47.255.255,13.244.0.0-13.251.255.255,52.192.0.0-52.223.191.255,65.8.0.0-65.11.255.255,143.204.0.0-143.204.255.255 remoteport=443 program="%ProgramFiles(x86)%\Panda Security\Panda Security Protection\PSUAService.exe"
netsh advfirewall firewall add rule name="PatchMyPC TCP" dir=out action=allow protocol=TCP remoteport=80,443 program="D:\Software\Temp\Soft\Windows Repair Toolbox\Downloads\PatchMyPc\PatchMyPC.exe"
netsh advfirewall firewall add rule name="Process Hacker VT TCP" dir=out action=allow protocol=TCP remoteip=74.125.34.46 remoteport=443 program="%ProgramFiles%\Process Hacker\ProcessHacker.exe"
netsh advfirewall firewall add rule name="Steam TCP" dir=out action=allow protocol=TCP remoteport=443,8384,27015-27030,27038,27050 program="D:\Steam\Steam.exe"
netsh advfirewall firewall add rule name="Steam UDP" dir=out action=allow protocol=UDP remoteport=1025-65535 program="D:\Steam\Steam.exe"
netsh advfirewall firewall add rule name="Steam Web TCP" dir=out action=allow protocol=TCP remoteport=443 program="D:\Steam\bin\cef\cef.win7x64\steamwebhelper.exe"
netsh advfirewall firewall add rule name="Steam Web UDP" dir=out action=allow protocol=UDP remoteip=224.0.0.252 remoteport=5355 program="D:\Steam\bin\cef\cef.win7x64\steamwebhelper.exe"
netsh advfirewall firewall add rule name="TOR Firefox TCP" dir=out action=allow protocol=TCP remoteip=127.0.0.1 remoteport=1025-65535 program="Z:\Desktop\Tor Browser\Browser\firefox.exe"
netsh advfirewall firewall add rule name="TOR TCP" dir=out action=allow protocol=TCP remoteport=443,1025-65535 program="Z:\Desktop\Tor Browser\Browser\TorBrowser\Tor\tor.exe"
netsh advfirewall firewall add rule name="Update Time UDP" dir=out action=allow protocol=UDP remoteport=123 program="D:\Software\Temp\Soft\Windows Repair Toolbox\Downloads\Custom Tools\Added Custom Tools\UpdateTime_x64.exe"
netsh advfirewall firewall add rule name="WRT TCP" dir=out action=allow protocol=TCP remoteport=80,443 program="D:\Software\Temp\Soft\Windows Repair Toolbox\Windows_Repair_Toolbox.exe"


rem =================================== Windows Logging ====================================


rem https://docs.microsoft.com/en-us/windows/win32/etw/configuring-and-starting-an-autologger-session
rem DiagLog is required by Diagnostic Policy Service (Troubleshooting)
rem EventLog-System/EventLog-Application are required by Windows Events Log Service
rem perfmon

reg add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "0" /f


rem ================================ Windows Error Reporting ===============================


rem https://docs.microsoft.com/en-us/windows/win32/wer/wer-settings

rem Disable Microsoft Support Diagnostic Tool MSDT
reg add "HKLM\Software\Policies\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy" /v "DisableQueryRemoteServer" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\ScriptedDiagnosticsProvider\Policy" /v "EnableQueryRemoteServer" /t REG_DWORD /d "0" /f

rem Disable System Debugger (Dr. Watson)
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AeDebug" /v "Auto" /t REG_SZ /d "0" /f

rem 1 - Disable Windows Error Reporting (WER)
reg add "HKLM\Software\Microsoft\PCHealth\ErrorReporting" /v "DoReport" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f

rem DefaultConsent / 1 - Always ask (default) / 2 - Parameters only / 3 - Parameters and safe data / 4 - All data
reg add "HKCU\Software\Microsoft\Windows\Windows Error Reporting\Consent" /v "DefaultConsent" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\Windows Error Reporting\Consent" /v "DefaultOverrideBehavior" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\Windows\Windows Error Reporting\Consent" /v "DefaultConsent" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\Windows\Windows Error Reporting\Consent" /v "DefaultOverrideBehavior" /t REG_DWORD /d "1" /f

rem 1 - Disable WER sending second-level data
reg add "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /v "DontSendAdditionalData" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\Windows\Windows Error Reporting" /v "DontSendAdditionalData" /t REG_DWORD /d "1" /f

rem 1 - Disable WER crash dialogs, popups
reg add "HKLM\Software\Microsoft\PCHealth\ErrorReporting" /v "ShowUI" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /v "DontShowUI" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\Windows\Windows Error Reporting" /v "DontShowUI" /t REG_DWORD /d "1" /f

rem 1 - Disable WER logging
reg add "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d "1" /f

schtasks /Change /TN "Microsoft\Windows\ErrorDetails\EnableErrorDetailsUpdate" /Disable
schtasks /Change /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /Disable

rem Windows Error Reporting Service
sc config WerSvc start= disabled

rem Remove Windows Errror Reporting exe (to restore run "sfc /scannow")
rem takeown /s %computername% /u %username% /f "%WinDir%\System32\WerFault.exe"
rem icacls "%WinDir%\System32\WerFault.exe" /grant:r %username%:F
rem taskkill /im WerFault.exe /f
rem del "%WinDir%\System32\WerFault.exe" /s /f /q

rem takeown /s %computername% /u %username% /f "%WinDir%\SysWOW64\WerFault.exe"
rem icacls "%WinDir%\SysWOW64\WerFault.exe" /grant:r %username%:F
rem taskkill /im WerFault.exe /f
rem del "%WinDir%\SysWOW64\WerFault.exe" /s /f /q

rem takeown /s %computername% /u %username% /f "%WinDir%\System32\WerFaultSecure.exe"
rem icacls "%WinDir%\System32\WerFaultSecure.exe" /grant:r %username%:F
rem taskkill /im WerFaultSecure.exe /f
rem del "%WinDir%\System32\WerFaultSecure.exe" /s /f /q

rem takeown /s %computername% /u %username% /f "%WinDir%\SysWOW64\WerFaultSecure.exe"
rem icacls "%WinDir%\SysWOW64\WerFaultSecure.exe" /grant:r %username%:F
rem taskkill /im WerFaultSecure.exe /f
rem del "%WinDir%\SysWOW64\WerFaultSecure.exe" /s /f /q

rem takeown /s %computername% /u %username% /f "%WinDir%\System32\wermgr.exe"
rem icacls "%WinDir%\System32\wermgr.exe" /grant:r %username%:F
rem taskkill /im wermgr.exe /f
rem del "%WinDir%\System32\wermgr.exe" /s /f /q

rem takeown /s %computername% /u %username% /f "%WinDir%\SysWOW64\wermgr.exe"
rem icacls "%WinDir%\SysWOW64\wermgr.exe" /grant:r %username%:F
rem taskkill /im wermgr.exe /f
rem del "%WinDir%\SysWOW64\wermgr.exe" /s /f /q


rem =================================== Windows Explorer ===================================
rem --------------------------------------- Options ----------------------------------------
rem ....................................... General ........................................

rem 2 - Open File Explorer to Quick access / 1 - Open File Explorer to This PC / 3 - Open File Explorer to Downloads
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "LaunchTo" /t REG_DWORD /d "3" /f

rem Single-click to open an item (point to select)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShellState" /t REG_BINARY /d "2400000017a8000000000000000000000000000001000000130000000000000073000000" /f

rem 2 - Underline icon titles consistent with my browser / 3 - Underline icon titles only when I point at them
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "IconUnderline" /t REG_DWORD /d "2" /f

rem 1 - Show recently used folders in Quick Access
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowRecent" /t REG_DWORD /d "0" /f

rem 1 - Show frequently folders in Quick Access
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "ShowFrequent" /t REG_DWORD /d "0" /f

rem ________________________________________________________________________________________
rem To restart explorer
rem taskkill /im explorer.exe /f & explorer.exe


rem =================================== Windows Explorer ===================================
rem --------------------------------------- Options ----------------------------------------
rem ........................................ View .........................................

rem Open Explorer - Choose the desired View - View - Options - View - Apply to Folders - OK - Close Explorer ASAP
rem reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
rem reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
rem reg delete "HKCU\Software\Classes\Wow6432Node\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
rem reg delete "HKCU\Software\Classes\Wow6432Node\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
rem reg delete "HKCU\Software\Microsoft\Windows\Shell\Bags" /f
rem reg delete "HKCU\Software\Microsoft\Windows\Shell\BagMRU" /f
rem reg delete "HKCU\Software\Microsoft\Windows\ShellNoRoam\Bags" /f
rem reg delete "HKCU\Software\Microsoft\Windows\ShellNoRoam\BagMRU" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell" /v "FolderType" /t REG_SZ /d "NotSpecified" /f
rem taskkill /im explorer.exe /f & explorer.exe


rem ________________________________________________________________________________________
rem Remove Network Icon from Navigation Panel
rem Take Ownership of the Registry key - https://www.youtube.com/watch?v=M1l5ifYKefg
reg add "HKCR\CLSID\{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}\ShellFolder" /v "Attributes" /t REG_DWORD /d "2962489444" /f

rem 1 - Hide Quick access from This PC / 0 - Show
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "HubMode" /t REG_DWORD /d "1" /f

rem Show/Hide - 3D Objects from This PC
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{31C0DD25-9439-4F12-BF41-7FF4EDA38722}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f

rem Show/Hide - Desktop from This PC
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
reg add "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f

rem Show/Hide - Documents from This PC
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{f42ee2d3-909f-4907-8871-4c22fc0bf756}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f

rem Show/Hide - Downloads from This PC
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
reg add "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{7d83ee9b-2244-4e70-b1f5-5393042af1e4}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f

rem Show/Hide - Movies/Videos from This PC
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{35286a68-3c57-41a1-bbb1-0eae73d76c95}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f

rem Show/Hide - Music from This PC
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f
reg add "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{a0c69a99-21c8-4671-8703-7934162fcf1d}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Hide" /f

rem Show/Hide - Pictures from This PC
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f
reg add "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\{0ddd015d-b06c-45d5-8c4c-f59713854639}\PropertyBag" /v "ThisPCPolicy" /t REG_SZ /d "Show" /f

rem Remove Desktop folder from This PC
rem reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}" /f
rem reg delete "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}" /f

rem Remove Documents folder from This PC
rem reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{d3162b92-9365-467a-956b-92703aca08af}" /f
rem reg delete "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{d3162b92-9365-467a-956b-92703aca08af}" /f

rem Remove Downloads folder from This PC
rem reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{088e3905-0323-4b02-9826-5d99428e115f}" /f
rem reg delete "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{088e3905-0323-4b02-9826-5d99428e115f}" /f

rem Remove Movies folder from This PC
rem reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}" /f
rem reg delete "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}" /f

rem Remove Music folder from This PC on
rem reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}" /f
rem reg delete "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}" /f

rem Remove Pictures folder from This PC
rem reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}" /f
rem reg delete "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}" /f


rem =================================== Windows Explorer ===================================
rem --------------------------------------- Options ----------------------------------------
rem .................................. Advanced Settings ...................................

rem 1 - Show hidden files, folders and drives
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d "1" /f

rem 0 - Show extensions for known file types
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d "0" /f

rem 0 - Hide protected operating system files 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSuperHidden" /t REG_DWORD /d "1" /f

rem 1 - Launch folder windows in a separate process
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SeparateProcess" /t REG_DWORD /d "1" /f

rem 1 - Show Sync Provider Notifications in Windows Explorer (ADs)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /t REG_DWORD /d "0" /f

rem 1 - Use Sharing Wizard
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SharingWizardOn" /t REG_DWORD /d "0" /f

rem Navigation pane - 1 - Expand to open folder
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "NavPaneExpandToCurrentFolder" /t REG_DWORD /d "0" /f

rem ________________________________________________________________________________________
rem 0 - All of the components of Windows Explorer run a single process / 1 - All instances of Windows Explorer run in one process and the Desktop and Taskbar run in a separate process
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "DesktopProcess" /t REG_DWORD /d "1" /f

rem Yes - Use Inline AutoComplete in File Explorer and Run Dialog / No
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoComplete" /v "Append Completion" /t REG_SZ /d "No" /f

rem 0 - Do this for all current items checkbox / 1 - Disabled
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /v "ConfirmationCheckBoxDoForAll" /t REG_DWORD /d "0" /f

rem 1 - Always show more details in copy dialog
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /v "EnthusiastMode" /t REG_DWORD /d "0" /f

rem 1 - Disable Previous Version Tab
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "NoPreviousVersionsPage" /t REG_DWORD /d "1" /f

rem 1 - Display confirmation dialog when deleting files
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "ConfirmFileDelete" /t REG_DWORD /d "1" /f

rem 1075839525 - Auto arrange icons and Align icons to grid on Desktop / 1075839520 / 1075839521 / 1075839524
reg add "HKCU\Software\Microsoft\Windows\Shell\Bags\1\Desktop" /v "FFlags" /t REG_DWORD /d "1075839525" /f

rem 1 - Disable Look for an app in the Store (How do you want to open this file)
reg add "HKLM\Software\Policies\Microsoft\Windows\Explorer" /v "NoUseStoreOpenWith" /t REG_DWORD /d "1" /f


rem ================================ Windows Optimizations =================================


rem https://channel9.msdn.com/Blogs/Seth-Juarez/Memory-Compression-in-Windows-10-RTM

rem Determines whether user processes end automatically when the user either logs off or shuts down / 1 - Processes end automatically
reg add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f

rem Specifies the number of times the taskbar button flashes to notify the user that the system has activated a background window
rem If the time elapsed since the last user input exceeds the value of the ForegroundLockTimeout entry, the window will automatically be brought to the foreground
reg add "HKCU\Control Panel\Desktop" /v "ForegroundFlashCount" /t REG_SZ /d "0" /f

rem ForegroundLockTimeout specifies the time in milliseconds, following user input, during which the system keeps applications from moving into the foreground / 0 - Disabled / 200000 - Default
reg add "HKCU\Control Panel\Desktop" /v "ForegroundLockTimeout" /t REG_DWORD /d "0" /f

rem Specifies in milliseconds how long the System waits for user processes to end after the user clicks the End Task command button in Task Manager
reg add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "25000" /f

rem Determines how long the System waits for user processes to end after the user attempts to log off or to shut down
reg add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "25000" /f

rem Determines in milliseconds how long the System waits for services to stop after notifying the service that the System is shutting down
reg add "HKLM\System\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "25000" /f

rem Determines in milliseconds the interval from the time the cursor is pointed at a menu until the menu items are displayed
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f

rem Remove Windows Mouse Acceleration Curve
reg delete "HKCU\Control Panel\Mouse" /v "SmoothMouseXCurve" /f
reg delete "HKCU\Control Panel\Mouse" /v "SmoothMouseYCurve" /f

rem Mouse Hover Time in milliseconds before Pop-up Display
reg add "HKCU\Control Panel\Mouse" /v "MouseHoverTime" /t REG_SZ /d "0" /f

rem How long in milliseconds you want to have for a startup delay time for desktop apps that run at startup to load
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d "0" /f

rem n - Disable Background disk defragmentation / y - enable
reg add "HKLM\Software\Microsoft\Dfrg\BootOptimizeFunction" /v "Enable" /t REG_SZ /d "n" /f

rem 0 - Disable Background auto-layout / Disable Optimize Hard Disk when idle
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\OptimalLayout" /v "EnableAutoLayout" /t REG_DWORD /d "0" /f

rem Disable Automatic Maintenance / Scheduled System Maintenance
reg add "HKLM\Software\Microsoft\Windows\ScheduledDiagnostics" /v "EnabledExecution" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\ScheduledDiagnostics" /v "EnabledExecution" /t REG_DWORD /d "0" /f

rem 0 - Enables 8dot3 name creation for all volumes on the system / 1 - Disables 8dot3 name creation for all volumes on the system / 2 - Sets 8dot3 name creation on a per volume basis / 3 - Disables 8dot3 name creation for all volumes except the system volume
rem fsutil 8dot3name scan c:\
fsutil behavior set disable8dot3 1

rem 1 - Disable the Encrypting File System (EFS)
fsutil behavior set disableencryption 1

rem 1 - When listing directories, NTFS does not update the last-access timestamp, and it does not record time stamp updates in the NTFS log
fsutil behavior set disablelastaccess 3

rem 5 - 5 secs / Delay Chkdsk startup time at OS Boot
reg add "HKLM\System\CurrentControlSet\Control\Session Manager" /v "AutoChkTimeout" /t REG_DWORD /d "5" /f

rem 0 - Establishes a standard size file-system cache of approximately 8 MB / 1 - Establishes a large system cache working set that can expand to physical memory, minus 4 MB, if needed
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f

rem 0 - Drivers and the kernel can be paged to disk as needed / 1 - Drivers and the kernel must remain in physical memory
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f

rem 0 - Disable Prefetch / 1 - Enable Prefetch when the application starts / 2 - Enable Prefetch when the device starts up / 3 - Enable Prefetch when the application or device starts up
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f

rem 0 - Disable SuperFetch / 1 - Enable SuperFetch when the application starts up / 2 - Enable SuperFetch when the device starts up / 3 - Enable SuperFetch when the application or device starts up
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f

rem 0 - Disable It / 1 - Default
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableBootTrace" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "SfTracingState" /t REG_DWORD /d "0" /f

rem 0 - Disable Fast Startup for a Full Shutdown / 1 - Enable Fast Startup (Hybrid Boot) for a Hybrid Shutdown
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f

rem Disable Hibernation / Disable Fast Startup (Hybrid Boot)
powercfg -h off


rem =================================== Windows Policies ===================================


rem Group Policies - https://admx.help
rem https://docs.microsoft.com/en-us/windows/privacy/manage-connections-from-windows-operating-system-components-to-microsoft-services
rem https://docs.microsoft.com/en-us/windows/client-management/mdm/new-in-windows-mdm-enrollment-management#whatsnew10
rem https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-configuration-service-provider
rem https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-security-baselines

rem ________________________________________________________________________________________
rem 1808 - Disable the warning The Publisher could not be verified
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Associations" /v "DefaultFileTypeRisk" /t REG_DWORD /d "1808" /f

rem Disable Security warning to unblock the downloaded file
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "1" /f

rem 1 - Disable Low Disk Space Alerts
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLowDiskSpaceChecks" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLowDiskSpaceChecks" /t REG_DWORD /d "1" /f

rem 1 - Don't run specified exe
rem https://lolbas-project.github.io
rem https://blog.talosintelligence.com/2019/11/hunting-for-lolbins.html
rem https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-application-control/microsoft-recommended-block-rules
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "DisallowRun" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "1" /t REG_SZ /d "addinprocess.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "2" /t REG_SZ /d "addinprocess32.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "3" /t REG_SZ /d "addinutil.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "4" /t REG_SZ /d "aspnet_compiler.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "5" /t REG_SZ /d "bash.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "6" /t REG_SZ /d "bginfo.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "7" /t REG_SZ /d "bitsadmin.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "8" /t REG_SZ /d "cdb.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "9" /t REG_SZ /d "cipher.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "10" /t REG_SZ /d "cscript.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "11" /t REG_SZ /d "csi.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "12" /t REG_SZ /d "dbghost.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "13" /t REG_SZ /d "dnx.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "14" /t REG_SZ /d "dotnet.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "15" /t REG_SZ /d "fsi.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "16" /t REG_SZ /d "fsiAnyCpu.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "17" /t REG_SZ /d "infdefaultinstall.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "18" /t REG_SZ /d "hh.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "19" /t REG_SZ /d "kd.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "20" /t REG_SZ /d "kill.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "21" /t REG_SZ /d "lxrun.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "22" /t REG_SZ /d "msbuild.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "23" /t REG_SZ /d "mshta.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "24" /t REG_SZ /d "msra.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "25" /t REG_SZ /d "nc.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "26" /t REG_SZ /d "nc64.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "27" /t REG_SZ /d "ntkd.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "28" /t REG_SZ /d "ntsd.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "29" /t REG_SZ /d "powershell.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "30" /t REG_SZ /d "powershell_ise.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "31" /t REG_SZ /d "powershellcustomhost.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "32" /t REG_SZ /d "psexec.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "33" /t REG_SZ /d "rcsi.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "34" /t REG_SZ /d "regsvr32.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "35" /t REG_SZ /d "runscripthelper.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "36" /t REG_SZ /d "scrcons.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "37" /t REG_SZ /d "texttransform.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "38" /t REG_SZ /d "visualuiaverifynative.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "39" /t REG_SZ /d "wbemtest.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "40" /t REG_SZ /d "wecutil.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "41" /t REG_SZ /d "werfault.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "42" /t REG_SZ /d "wfc.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "43" /t REG_SZ /d "windbg.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "44" /t REG_SZ /d "winrm.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "45" /t REG_SZ /d "winrs.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "46" /t REG_SZ /d "wmic.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "47" /t REG_SZ /d "wscript.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "48" /t REG_SZ /d "wsl.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "49" /t REG_SZ /d "wslconfig.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "50" /t REG_SZ /d "wslhost.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "51" /t REG_SZ /d "ftp.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "52" /t REG_SZ /d "certutil.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "53" /t REG_SZ /d "regsvr32.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "54" /t REG_SZ /d "rundll32.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v "55" /t REG_SZ /d "finger.exe" /f

rem N - Disable Distributed Component Object Model (DCOM) support in Windows / Y - Enable
reg add "HKLM\Software\Microsoft\Ole" /v "EnableDCOM" /t REG_SZ /d "N" /f

rem 0 - Disable Microsoft Windows Just-In-Time (JIT) script debugging
reg add "HKCU\Software\Microsoft\Windows Script\Settings" /v "JITDebug" /t REG_DWORD /d "0" /f
reg add "HKU\.Default\Microsoft\Windows Script\Settings" /v "JITDebug" /t REG_DWORD /d "0" /f

rem 1 - When the system detects that the user is downloading an external program that runs as part of the Windows user interface, the system searches for a digital certificate or requests that the user approve the action
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "EnforceShellExtensionSecurity" /t REG_DWORD /d "1" /f

rem Disable Active Desktop
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideIcons" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop" /v "NoAddingComponents" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop" /v "NoComponents" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "ForceActiveDesktopOn" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoActiveDesktop" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoActiveDesktopChanges" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDesktop" /t REG_DWORD /d "0" /f

rem Enables or disables the retrieval of online tips and help for the Settings app (ADs)
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "AllowOnlineTips" /t REG_DWORD /d "0" /f

rem 1 - Disable recent documents history
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsHistory" /t REG_DWORD /d "1" /f

rem 1 - Do not add shares from recently opened documents to the My Network Places folder
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "Norecentdocsnethood" /t REG_DWORD /d "1" /f

rem 0 - Disable configuring the machine at boot-up / 1 - Enable configuring the machine at boot-up / 2 - Enable configuring the machine only if DSC is in pending or current state (Default)
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DSCAutomationHostEnabled" /t REG_DWORD /d "0" /f

rem 0 - Disable / 1 - Enable (Default)
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableCursorSuppression" /t REG_DWORD /d "0" /f

rem 0 - Disable Administrative Shares
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "LocalAccountTokenFilterPolicy" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Services\LanmanServer\Parameters" /v "AutoShareServer" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Services\LanmanServer\Parameters" /v "AutoShareWks" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Services\LanmanServer\Parameters" /v "RestrictNullSessAccess" /t REG_DWORD /d "0" /f

rem Disabling PowerShell script execution / Restricting PowerShell to Constrained Language mode
rem Set-ExecutionPolicy bypass - noprofile
reg add "HKLM\Software\Microsoft\PowerShell\1\ShellIds\ScriptedDiagnostics" /v "ExecutionPolicy" /t REG_SZ /d "Restricted" /f
reg add "HKLM\Software\WOW6432Node\Microsoft\PowerShell\1\ShellIds\ScriptedDiagnostics" /v "ExecutionPolicy" /t REG_SZ /d "Restricted" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\PowerShell" /v "EnableScripts" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Environment" /v "__PSLockDownPolicy" /t REG_SZ /d "4" /f

rem 1 - The device does not store the user's credentials for automatic sign-in after a Windows Update restart. The users' lock screen apps are not restarted after the system restarts.
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableAutomaticRestartSignOn" /t REG_DWORD /d "1" /f

rem Determines how many user account entries Windows saves in the logon cache on the local computer.
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "CachedLogonsCount" /t REG_DWORD /d "0" /f

rem Locky ransomware using VBscript (Visual Basic Script) - https://blog.avast.com/a-closer-look-at-the-locky-ransomware - https://www.wietzebeukema.nl/blog/hijacking-dlls-in-windows
rem 0 - Disable Windows Script Host (WSH) (prevents majority of malware from working, especially when removing PowerShell as well, Disable ExecutionPolicy can be easily bypassed)
rem Also disabled via DisallowRun "wscript.exe" and "cscript.exe"
reg add "HKCU\Software\Microsoft\Windows Script Host\Settings" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\Windows Script Host\Settings" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\WOW6432Node\Microsoft\Windows Script Host\Settings" /v "Enabled" /t REG_DWORD /d "0" /f

rem Disable Customer Experience Improvement (CEIP/SQM - Software Quality Management)
reg add "HKLM\Software\Policies\Microsoft\Internet Explorer\SQM" /v "DisableCustomerImprovementProgram" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Messenger\Client" /v "CEIP" /t REG_DWORD /d "2" /f
reg add "HKLM\Software\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f

rem 0 - Disable Microsoft Edge Preloading
reg add "HKLM\Software\Policies\Microsoft\MicrosoftEdge\Main" /v "AllowPrelaunch" /t REG_DWORD /d "0" /f

rem 0 - Disable Application Impact Telemetry (AIT)
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "0" /f

rem 0 - Disable Inventory Collector
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d "1" /f

rem 0 - Disable Program Compatibility Assistant
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisablePCA" /t REG_DWORD /d "1" /f

rem 1 - Disable Steps Recorder (Steps Recorder keeps a record of steps taken by the user, the data includes user actions such as keyboard input and mouse input user interface data and screen shots)
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-Application-Experience/Steps-Recorder" /v "Enabled" /t REG_DWORD /d "0" /f

rem 1 - Specifies that Windows does not automatically encrypt eDrives
reg add "HKLM\Software\Policies\Microsoft\Windows\EnhancedStorageDevices" /v "TCGSecurityActivationDisabled" /t REG_DWORD /d "1" /f

rem Network Connection Status Indicator (NCSI) - HKLM\System\CurrentControlSet\Services\NlaSvc\Parameters\Internet
reg add "HKLM\Software\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator" /v "NoActiveProbe" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d "0" /f

rem Disable PerfTrack (tracking of responsiveness events)
reg add "HKLM\Software\Policies\Microsoft\Windows\WDI\{9c5a40da-b965-4fc3-8781-88dd50a6299d}" /v "ScenarioExecutionEnabled" /t REG_DWORD /d "0" /f

rem 1000000000000 - Block untrusted fonts and log events / 2000000000000 - Do not block untrusted fonts / 3000000000000 - Log events without blocking untrusted fonts
reg add "HKLM\Software\Policies\Microsoft\Windows NT\MitigationOptions" /v "MitigationOptions_FontBocking" /t REG_SZ /d "1000000000000" /f

rem 1 - Enable Shutdown Event Tracker / 0 - Disable (Default)
reg add "HKLM\Software\Policies\Microsoft\Windows NT\Reliability" /v "ShutdownReasonOn" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows NT\Reliability" /v "ShutdownReasonUI" /t REG_DWORD /d "0" /f

rem 1 - Do not allow storage of passwords and credentials for network authentication in the Credential Manager
reg add "HKLM\System\CurrentControlSet\Control\Lsa" /v "DisableDomainCreds" /t REG_DWORD /d "1" /f

rem Digest Security Provider is disabled by default, but malware can enable it to recover the plain text passwords from the system’s memory (+CachedLogonsCount/+DisableDomainCreds/+DisableAutomaticRestartSignOn)
reg add "HKLM\System\CurrentControlSet\Control\SecurityProviders\WDigest" /v "UseLogonCredential" /t REG_DWORD /d "0" /f

rem The system registry is no longer backed up to the RegBack folder starting in Windows 10 version 1803
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Configuration Manager" /v "EnablePeriodicBackup" /t REG_DWORD /d "1" /f

rem No-one will be a member of the built-in group, although it will still be visible in the Object Picker / 1 - all users logging on to a session on the server will be made a member of the TERMINAL SERVER USER group
reg add "HKLM\System\CurrentControlSet\Control\Terminal Server" /v "TSUserEnabled" /t REG_DWORD /d "0" /f

rem Disable SMB 1.0/2.0
reg add "HKLM\System\CurrentControlSet\Services\LanmanServer\Parameters" /v "SMB1" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Services\LanmanServer\Parameters" /v "SMB2" /t REG_DWORD /d "0" /f


rem =================================== Windows Policies ===================================
rem --------------------------------- User Account Control ---------------------------------

rem https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/dd835564(v=ws.10)
rem Reason to set UAC to Always Notify - https://docs.microsoft.com/en-us/previous-versions/technet-magazine/dd822916(v=msdn.10)?
rem https://daniels-it-blog.blogspot.com/2020/07/uac-bypass-via-dll-hijacking-and-mock.html
rem https://www.bleepingcomputer.com/news/security/bypassing-windows-10-uac-with-mock-folders-and-dll-hijacking/
rem There are really only two effectively distinct settings for the UAC slider - https://devblogs.microsoft.com/oldnewthing/20160816-00/?p=94105

rem 0 - Elevate without prompting / 1 - Prompt for credentials on the secure desktop / 2 - Prompt for consent on the secure desktop / 3 - Prompt for credentials / 4 - Prompt for consent / 5 (Default) - Prompt for consent for non-Windows binaries
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d "1" /f

rem 0 - Automatically deny elevation requests / 1 - Prompt for credentials on the secure desktop / 3 (Default) - Prompt for credentials
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorUser" /t REG_DWORD /d "0" /f

rem 2 (Default)
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableFullTrustStartupTasks" /t REG_DWORD /d "0" /f

rem Detect application installations and prompt for elevation / 1 - Enabled (default for home) / 0 - Disabled (default for enterprise)
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableInstallerDetection" /t REG_DWORD /d "1" /f

rem Run all administrators in Admin Approval Mode / 0 - Disabled (UAC) / 1 - Enabled (UAC)
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "1" /f

rem Only elevate UIAccess applications that are installed in secure locations / 0 - Disabled / 1 (Default) - Enabled
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableSecureUIAPaths" /t REG_DWORD /d "1" /f

rem 0 (Default) = Disabled / 1 - Enabled
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableUwpStartupTasks" /t REG_DWORD /d "0" /f

rem Allow UIAccess applications to prompt for elevation without using the secure desktop / 0 (Default) = Disabled / 1 - Enabled
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableUIADesktopToggle" /t REG_DWORD /d "0" /f

rem https://docs.microsoft.com/en-us/openspecs/windows_protocols/ms-gpsb/932a34b5-48e7-44c0-b6d2-a57aadef1799
rem 0 - Disabled / 1 - Enabled (Default)
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableVirtualization" /t REG_DWORD /d "0" /f

rem Admin Approval Mode for the built-in Administrator account / 0 (Default) - Disabled / 1 - Enabled
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "FilterAdministratorToken" /t REG_DWORD /d "1" /f

rem Allow UIAccess applications to prompt for elevation without using the secure desktop / 0 (Default) - Disabled / 1 - Enabled
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "PromptOnSecureDesktop" /t REG_DWORD /d "1" /f

rem Enforce cryptographic signatures on any interactive application that requests elevation of privilege / 0 (Default) - Disabled / 1 - Enabled
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "ValidateAdminCodeSignatures" /t REG_DWORD /d "1" /f

rem Display highly detailed status messages / 0 (Default) - Disabled / 1 - Enabled
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "VerboseStatus" /t REG_DWORD /d "1" /f

rem 1 - Enable command-line auditing
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\Audit" /v "ProcessCreationIncludeCmdLine_Enabled" /t REG_DWORD /d "1" /f


rem =============================== Windows Scheduled Tasks ================================


rem UAC Bypass - https://enigma0x3.net/2016/07/22/bypassing-uac-on-windows-10-using-disk-cleanup

rem schtasks /Change /TN "Microsoft\Windows\TextServicesFramework\MsCtfMonitor" /Enable
rem schtasks /Run /TN "Microsoft\Windows\TextServicesFramework\MsCtfMonitor"
rem schtasks /Change /TN "Microsoft\Office\OfficeBackgroundTaskHandlerRegistration" /Disable
rem schtasks /End /TN "Microsoft\Office\OfficeBackgroundTaskHandlerRegistration"

rem Disable Background Synchronization (permanently, it can not be disabled) 
rem schtasks /DELETE /TN "Microsoft\Windows\SettingSync\BackgroundUploadTask" /f

schtasks /DELETE /TN "AMDInstallLauncher" /f
schtasks /DELETE /TN "AMDLinkUpdate" /f
schtasks /DELETE /TN "Driver Easy Scheduled Scan" /f
schtasks /DELETE /TN "MicrosoftEdgeUpdateTaskMachineCore" /f
schtasks /DELETE /TN "MicrosoftEdgeUpdateTaskMachineUA" /f
schtasks /DELETE /TN "ModifyLinkUpdate" /f
schtasks /DELETE /TN "SoftMakerUpdater" /f
schtasks /DELETE /TN "StartCN" /f
schtasks /DELETE /TN "StartDVR" /f

schtasks /Change /TN "CreateExplorerShellUnelevatedTask" /Enable

schtasks /Change /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319" /Disable
schtasks /Change /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 64" /Disable
schtasks /Change /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 64 Critical" /Disable
schtasks /Change /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 Critical" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable
schtasks /Change /TN "Microsoft\Windows\Defrag\ScheduledDefrag" /Disable
schtasks /Change /TN "Microsoft\Windows\Device Information\Device" /Disable
schtasks /Change /TN "Microsoft\Windows\Device Information\Device User" /Disable
schtasks /Change /TN "Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner" /Disable
schtasks /Change /TN "Microsoft\Windows\Diagnosis\Scheduled" /Disable
schtasks /Change /TN "Microsoft\Windows\DiskCleanup\SilentCleanup" /Disable
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /Disable
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\StorageSense" /Disable
schtasks /Change /TN "Microsoft\Windows\DUSM\dusmtask" /Disable
schtasks /Change /TN "Microsoft\Windows\Feedback\Siuf\DmClient" /Disable
schtasks /Change /TN "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /Disable
schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /Disable
schtasks /Change /TN "Microsoft\Windows\Flighting\FeatureConfig\ReconcileFeatures" /Disable
schtasks /Change /TN "Microsoft\Windows\Flighting\FeatureConfig\UsageDataFlushing" /Disable
schtasks /Change /TN "Microsoft\Windows\Flighting\FeatureConfig\UsageDataReporting" /Disable
schtasks /Change /TN "Microsoft\Windows\Flighting\OneSettings\RefreshCache" /Disable
schtasks /Change /TN "Microsoft\Windows\HelloFace\FODCleanupTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Input\LocalUserSyncDataAvailable" /Disable
schtasks /Change /TN "Microsoft\Windows\Input\MouseSyncDataAvailable" /Disable
schtasks /Change /TN "Microsoft\Windows\Input\PenSyncDataAvailable" /Disable
schtasks /Change /TN "Microsoft\Windows\Input\TouchpadSyncDataAvailable" /Disable
schtasks /Change /TN "Microsoft\Windows\International\Synchronize Language Settings" /Disable
schtasks /Change /TN "Microsoft\Windows\LanguageComponentsInstaller\Installation" /Disable
schtasks /Change /TN "Microsoft\Windows\LanguageComponentsInstaller\ReconcileLanguageResources" /Disable
schtasks /Change /TN "Microsoft\Windows\LanguageComponentsInstaller\Uninstallation" /Disable
schtasks /Change /TN "Microsoft\Windows\License Manager\TempSignedLicenseExchange" /Disable
schtasks /Change /TN "Microsoft\Windows\License Manager\TempSignedLicenseExchange" /Disable
schtasks /Change /TN "Microsoft\Windows\Management\Provisioning\Cellular" /Disable
schtasks /Change /TN "Microsoft\Windows\Management\Provisioning\Logon" /Disable
schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /Disable
schtasks /Change /TN "Microsoft\Windows\Maps\MapsToastTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Maps\MapsUpdateTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Mobile Broadband Accounts\MNO Metadata Parser" /Disable
schtasks /Change /TN "Microsoft\Windows\MUI\LPRemove" /Disable
schtasks /Change /TN "Microsoft\Windows\Multimedia\SystemSoundsService" /Disable
schtasks /Change /TN "Microsoft\Windows\NlaSvc\WiFiTask" /Disable
schtasks /Change /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo" /Disable
schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /Disable
schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Disable
schtasks /Change /TN "Microsoft\Windows\Printing\EduPrintProv" /Disable
schtasks /Change /TN "Microsoft\Windows\PushToInstall\Registration" /Disable
schtasks /Change /TN "Microsoft\Windows\Ras\MobilityManager" /Disable
schtasks /Change /TN "Microsoft\Windows\RecoveryEnvironment\VerifyWinRE" /Disable
schtasks /Change /TN "Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /Disable
schtasks /Change /TN "Microsoft\Windows\RetailDemo\CleanupOfflineContent" /Disable
schtasks /Change /TN "Microsoft\Windows\Servicing\StartComponentCleanup" /Disable
schtasks /Change /TN "Microsoft\Windows\SettingSync\BackupTask" /Disable
schtasks /Change /TN "Microsoft\Windows\SettingSync\NetworkStateChangeTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Setup\SetupCleanupTask" /Disable
schtasks /Change /TN "Microsoft\Windows\SpacePort\SpaceAgentTask" /Disable
schtasks /Change /TN "Microsoft\Windows\SpacePort\SpaceManagerTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Storage Tiers Management\Storage Tiers Management Initialization" /Disable
schtasks /Change /TN "Microsoft\Windows\Sysmain\ResPriStaticDbSync" /Disable
schtasks /Change /TN "Microsoft\Windows\Sysmain\WsSwapAssessmentTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Task Manager\Interactive" /Disable
schtasks /Change /TN "Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /Disable
schtasks /Change /TN "Microsoft\Windows\Time Synchronization\SynchronizeTime" /Disable
schtasks /Change /TN "Microsoft\Windows\Time Zone\SynchronizeTimeZone" /Disable
schtasks /Change /TN "Microsoft\Windows\TPM\Tpm-HASCertRetr" /Disable
schtasks /Change /TN "Microsoft\Windows\TPM\Tpm-Maintenance" /Disable
schtasks /Change /TN "Microsoft\Windows\UPnP\UPnPHostConfig" /Disable
schtasks /Change /TN "Microsoft\Windows\User Profile Service\HiveUploadTask" /Disable
schtasks /Change /TN "Microsoft\Windows\WCM\WiFiTask" /Disable
schtasks /Change /TN "Microsoft\Windows\WDI\ResolutionHost" /Disable
schtasks /Change /TN "Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange" /Disable
schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Scheduled Start" /Disable
schtasks /Change /TN "Microsoft\Windows\WlanSvc\CDSSync" /Disable
schtasks /Change /TN "Microsoft\Windows\WOF\WIM-Hash-Management" /Disable
schtasks /Change /TN "Microsoft\Windows\WOF\WIM-Hash-Validation" /Disable
schtasks /Change /TN "Microsoft\Windows\Work Folders\Work Folders Logon Synchronization" /Disable
schtasks /Change /TN "Microsoft\Windows\Work Folders\Work Folders Maintenance Work" /Disable
schtasks /Change /TN "Microsoft\Windows\Workplace Join\Automatic-Device-Join" /Disable
schtasks /Change /TN "Microsoft\Windows\WwanSvc\NotificationTask" /Disable
schtasks /Change /TN "Microsoft\Windows\WwanSvc\OobeDiscovery" /Disable


rem ================================== Windows Services ====================================


rem https://docs.microsoft.com/en-us/windows/application-management/per-user-services-in-windows
rem https://docs.microsoft.com/en-us/windows-server/security/windows-services/security-guidelines-for-disabling-system-services-in-windows-server

rem Application Information / required by UAC
rem AppX Deployment Service (AppXSVC) / required by Store
rem Background Intelligent Transfer Service / required by Windows Updates / depends on Network List Service (starts even when disabled)
rem Base Filtering Engine / required by Windows Defender Firewall
rem CNG Key Isolation / required to login to Windows Insider / Switch to Local Account / Set up PIN / Basically everything Credentials related
rem Credential Manager / required to store credentials (check User Accounts - Credential Manager) / required by apps like Windows Mail to store passwords / An administrator has blocked you from running this app.
rem Delivery Optimization / required by Windows Updates
rem Diagnostic Policy Service / required by Windows Diagnostic (Troubleshooting)
rem DHCP Client / required by Windows Updates (0x80240022)
rem Distributed Link Tracking Client / sometimes required to open shortcuts and System apps - "Windows cannot access the specified device, path, or file. You may not have the appropriate permission to access the item"
rem Geolocation Service / required by some Windows Store apps, it can not be enabled when Connected User Experiences and Telemetry is disabled
rem Microsoft Account Sign-in Assistant / required to login to Microsoft Account
rem Network Connections / required to manage Network Connections
rem Network Connection Broker / required to change Network Settings
rem Network List Service / required by Windows Update and to change Network Settings (when disabled Windows fails to boot - Critical Service Died)
rem Network Location Awareness / required by Windows Update and Windows Defender Firewall
rem Network Store Interface Service / disabling disables Windows Firewall (when disabled Windows might fail to boot - Critical Service Died)
rem Print Spooler / required by printers
rem Radio Management Service / required to display WiFi networks
rem Security Accounts Manager / when disabled, explorer.exe (Desktop) crashes constantly
rem Storage Service / required to update store apps
rem Web Account Manager / required to login to Microsoft Account/Store
rem Windows Biometric Service / required by biometric devices like a fingerprint reader
rem Windows Connection Manager / required by WiFi and Data Usage and Windows Update (starts even when disabled)
rem Windows Defender Firewall (Base Filtering Engine/Network Location Awareness) / required by Windows Update and Store Apps (0x80073d0a)
rem Windows Driver Foundation - User-mode Driver Framework / required by some drivers like USB devices
rem Windows Image Acquisition (WIA) / required by scanners
rem Windows Management Instrumentation / required by wmic commands / disabled to prevent some fileless malware
rem Windows Push Notifications User Service / required by Logitech Setpoint to avoid Runtime Error

rem AMD Crash Defender Service
sc config "AMD Crash Defender Service" start= disabled

rem AMD External Events Utility
sc config "AMD External Events Utility" start= disabled

rem AVCTP service
sc config BthAvctpSvc start= disabled

rem Clipboard User Service
sc config cbdhsvc start= disabled

rem Connected User Experiences and Telemetry
sc config DiagTrack start= disabled

rem Contact Data
reg add "HKLM\System\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v "Start" /t REG_DWORD /d "4" /f

rem Data Usage
sc config DusmSvc start= disabled

rem Display Policy Service
sc config DispBrokerDesktopSvc start= disabled

rem dLauncherLoopback
sc config dLauncherLoopback start= demand

rem EaseUS Agent Service
sc config "EaseUS Agent" start= demand

rem Geolocation Service
sc config lfsvc start= disabled

rem IKE and AuthIP IPsec Keying Modules
sc config IKEEXT start= disabled

rem IP Helper
sc config iphlpsvc start= disabled

rem Payments and NFC/SE Manager
sc config SEMgrSvc start= disabled

rem Print Spooler
sc config Spooler start= disabled

rem Radio Management Service
sc config RmSvc start= disabled

rem Remote Access Connection Manager
sc config RasMan start= disabled

rem Remote Desktop Services
sc config TermService start= disabled

rem Retail Demo
sc config RetailDemo start=disabled

rem Server
sc config LanmanServer start= disabled

rem Shell Hardware Detection
sc config ShellHWDetection start= disabled

rem SSDP Discovery
sc config SSDPSRV start= disabled

rem Superfetch
sc config SysMain start= disabled

rem TCP/IP NetBIOS Helper
sc config lmhosts start= disabled

rem Touch Keyboard and Handwriting Panel Service (keeps ctfmon.exe running)
sc config TabletInputService start= disabled

rem UserDataSvc
reg add "HKLM\System\CurrentControlSet\Services\UserDataSvc" /v "Start" /t REG_DWORD /d "4" /f

rem UnistoreSvc
reg add "HKLM\System\CurrentControlSet\Services\UnistoreSvc" /v "Start" /t REG_DWORD /d "4" /f

rem WebClient
sc config WebClient start= disabled

rem Windows Remote Management (WS-Management)
sc config WinRM start= disabled

rem Windows Search
sc config WSearch start= disabled

rem Windows Time
sc config W32Time start= disabled

rem WinHTTP Web Proxy Auto-Discovery Service
reg add "HKLM\System\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d "4" /f

rem Workstation
sc config LanmanWorkstation start= disabled


rem =================================== Windows Settings ===================================
rem -------------------------------------- Accounts ----------------------------------------
rem ................................... Sing-in options ....................................

rem 1 - Automatically save my restartable apps when I sign out and restart them after I sign in
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "RestartApps" /t REG_DWORD /d "0" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Apps ------------------------------------------
rem ................................... Apps & features ....................................

rem Choose where you can get apps from - Anywhere / PreferStore / StoreOnly / Recommendations
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "AicEnabled" /t REG_SZ /d "Anywhere" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Apps ------------------------------------------
rem ................................... Apps & features ....................................
rem . . . . . . . . . . . . . . . . Programs and Features . . . . . . . . . . . . . . . . .

rem Dism /Online /Get-Features
rem Windows Basics


rem =================================== Windows Settings ===================================
rem --------------------------------------- Devices ----------------------------------------
rem ...................................... Autoplay .......................................

rem 0 - Use Autoplay for all media and devices
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers" /v "DisableAutoplay" /t REG_DWORD /d "1" /f 

rem ________________________________________________________________________________________
rem Disable AutoPlay and AutoRun
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoAutorun" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDriveTypeAutoRun" /t REG_DWORD /d "255" /f


rem =================================== Windows Settings ===================================
rem --------------------------------------- Devices ----------------------------------------
rem ........................................ Mouse .........................................
rem . . . . . . . . . . . . . . . . Additional mouse options . . . . . . . . . . . . . . . .

rem 1/6/10 - Enhance pointer precision (Mouse Acceleration)
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
rem ________________________________________________________________________________________
reg add "HKCU\Control Panel\Desktop" /v "SmoothScroll" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseTrails" /t REG_SZ /d "0" /f


rem =================================== Windows Settings ===================================
rem --------------------------------------- Devices ---------------.------------------------
rem ....................................... Typing .........................................

rem Autocorrect misspelled words (Privacy)
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableAutocorrection" /t REG_DWORD /d "0" /f

rem Highlight misspelled words (Privacy)
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableSpellchecking" /t REG_DWORD /d "0" /f

rem Show text suggestions as I type on the software keyboard (Privacy)
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableTextPrediction" /t REG_DWORD /d "0" /f

rem Add a space after I choose a text suggestion (Privacy)
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnablePredictionSpaceInsertion" /t REG_DWORD /d "0" /f

rem Add a period after I double-tap the Spacebar (Privacy)
reg add "HKCU\Software\Microsoft\TabletTip\1.7" /v "EnableDoubleTapSpace" /t REG_DWORD /d "0" /f


rem =================================== Windows Settings ===================================
rem --------------------------------------- Devices ---------------.------------------------
rem ....................................... Typing .........................................
rem . . . . . . . . . . . . . . . . How AI has helped you . . . .  . . . . . . . . . . . . .

rem Typing insights (Privacy)
reg add "HKCU\Software\Microsoft\Input\Settings" /v "InsightsEnabled" /t REG_DWORD /d "0" /f
rem ________________________________________________________________________________________
reg add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\TextInput" /v "AllowLinguisticDataCollection" /t REG_DWORD /d "0" /f


rem =================================== Windows Settings ===================================
rem --------------------------------------- Devices ---------------.-------------------------
rem .................................. Pen & Windows Ink ....................................

rem Show recommended app suggestions (Privacy)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\PenWorkspace" /v "PenWorkspaceAppSuggestionsEnabled" /t REG_DWORD /d "0" /f


rem =================================== Windows Settings ===================================
rem ------------------------------------ Easy of Access ------------------------------------
rem ....................................... Keyboard .......................................

rem Sticky Keys / 26 - Disable All / 511 - Default
reg add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "26" /f

rem Toggle Keys / 58 - Disable All / 63 - Default
reg add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "58" /f

rem ________________________________________________________________________________________
rem 1 - Disable Windows Key Hotkeys
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoWinKeys" /t REG_DWORD /d "1" /f
rem Disable specific Windows Key Hotkeys only (like R = Win+R)
rem reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DisabledHotkeys" /t REG_EXPAND_SZ /d "R" /f


rem =================================== Windows Settings ===================================
rem ------------------------------------ Easy of Access ------------------------------------
rem ........................................ Mouse ........................................

rem Mouse Keys / 254 - Disable / 255 - Default
reg add "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "254" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Gaming ----------------------------------------
rem ....................................... Game bar .......................................

rem 1 - Record game clips, screenshots, and broadcast using Game bar / Disable the message "Press Win + G to open Game bar"
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f

rem 1 - Open Game bar using this button on a controller
reg add "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "0" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Gaming ----------------------------------------
rem ....................................... Game DVR .......................................

rem ________________________________________________________________________________________
rem 1 - Show tips when I start a game (ADs)
reg add "HKCU\Software\Microsoft\GameBar" /v "ShowStartupPanel" /t REG_DWORD /d "0" /f

rem 0 - Disable Fullscreen Optimizations for Current User / 0 - Enabled / 2 - Disabled
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "2" /f

rem 0 - Disable Game DVR / "Press Win + G to record a clip"
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "0" /f

reg add "HKLM\System\CurrentControlSet\Services\BcastDVRUserService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\System\CurrentControlSet\Services\xbgm" /v "Start" /t REG_DWORD /d "4" /f
sc config XblAuthManager start= disabled
sc config XblGameSave start= disabled
sc config XboxGipSvc start= disabled
sc config XboxNetApiSvc start= disabled
schtasks /Change /TN "Microsoft\XblGameSave\XblGameSaveTask" /Disable

rem Remove Game Bar Presence (to restore run "sfc /scannow")
takeown /s %computername% /u %username% /f "%WinDir%\System32\GameBarPresenceWriter.exe"
icacls "%WinDir%\System32\GameBarPresenceWriter.exe" /grant:r %username%:F
taskkill /im GameBarPresenceWriter.exe /f
del "%WinDir%\System32\GameBarPresenceWriter.exe" /s /f /q

reg add "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d "0" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Gaming ----------------------------------------
rem ....................................... Game Mode ......................................

rem 0 - Disable support for Game Mode
reg add "HKCU\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "0" /f

rem 1 - Use Game Mode
reg add "HKCU\Software\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "0" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------- Network & Internet ----------------------------------
rem ................................ Change adapter options ................................

rem Show public/external IP
rem nslookup myip.opendns.com. resolver1.opendns.com

rem Windows wmic command line command
rem http://www.computerhope.com/wmic.htm
rem To get adapter's index number use
rem wmic nicconfig get caption,index,TcpipNetbiosOptions

rem Disable IPv6
netsh int ipv6 isatap set state disabled
netsh int teredo set state disabled
netsh interface ipv6 6to4 set state state=disabled undoonstop=disabled
reg add "HKLM\System\CurrentControlSet\Services\Tcpip6\Parameters" /v "DisabledComponents" /t REG_DWORD /d "255" /f

rem Setup DNS over HTTPS (DoH)
reg add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "EnableAutoDoh" /t REG_DWORD /d "2" /f

rem Setup DNS Servers on DHCP Enabled Network (Quad9)
wmic nicconfig where DHCPEnabled=TRUE call SetDNSServerSearchOrder ("9.9.9.9","149.112.112.112")

rem Setup IP, Gateway and DNS Servers based on the MAC address (To Enable DHCP: wmic nicconfig where macaddress="28:E3:47:18:70:3D" call enabledhcp)
rem http://www.subnet-calculator.com/subnet.php?net_class=A
wmic nicconfig where macaddress="00:D8:61:6E:E8:C5" call EnableStatic ("10.10.10.12"), ("255.255.255.248")
wmic nicconfig where macaddress="00:D8:61:6E:E8:C5" call SetDNSServerSearchOrder ("9.9.9.9","149.112.112.112")
wmic nicconfig where macaddress="00:D8:61:6E:E8:C5" call SetGateways ("10.10.10.10")

rem 0 - Disable LMHOSTS Lookup on all adapters / 1 - Enable
reg add "HKLM\System\CurrentControlSet\Services\NetBT\Parameters" /v "EnableLMHOSTS" /t REG_DWORD /d "0" /f

rem 2 - Disable NetBIOS over TCP/IP on all adapters / 1 - Enable / 0 - Default
wmic nicconfig where TcpipNetbiosOptions=0 call SetTcpipNetbios 2
wmic nicconfig where TcpipNetbiosOptions=1 call SetTcpipNetbios 2

rem ________________________________________________________________________________________
rem https://docs.microsoft.com/en-us/windows/win32/wininet/caching?
rem https://www.codeproject.com/articles/1158641/windows-continuous-disk-write-plus-webcachev-dat-p
rem Disable WinInetCacheServer (WinINet Caching/V01.log/WebCacheV01.dat)
rem %LocalAppData%\Microsoft\Windows\WebCache
rem Take Ownership of the Registry key - https://www.youtube.com/watch?v=M1l5ifYKefg
reg delete "HKCR\AppID\{3eb3c877-1f16-487c-9050-104dbcd66683}" /f
reg delete "HKCR\CLSID\{0358b920-0ac7-461f-98f4-58e32cd89148}" /v "AppID" /f
reg delete "HKCR\Wow6432Node\AppID\{3eb3c877-1f16-487c-9050-104dbcd66683}" /f
reg delete "HKCR\Wow6432Node\CLSID\{0358b920-0ac7-461f-98f4-58e32cd89148}" /v "AppID" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Classes\AppID\{3eb3c877-1f16-487c-9050-104dbcd66683}" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Classes\CLSID\{0358b920-0ac7-461f-98f4-58e32cd89148}" /v "AppID" /f
schtasks /Change /TN "Microsoft\Windows\Wininet\CacheTask" /Disable

rem 0 - Disable WiFi Sense (shares your WiFi network login with other people)
reg add "HKLM\Software\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" /v "value" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" /v "value" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\WcmSvc\wifinetworkmanager\config" /v "AutoConnectAllowedOEM" /t REG_DWORD /d "0" /f

rem 1 - Disable Domain Name Devolution (DNS AutoCorrect) / 0 - Enabled (Default)
reg add "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v "UseDomainNameDevolution" /t REG_DWORD /d "0" /f

rem Restrict NTLM: Incoming NTLM traffic - Deny All
reg add "HKLM\System\CurrentControlSet\Control\Lsa\MSV1_0" /v "RestrictReceivingNTLMTraffic" /t REG_DWORD /d "2" /f
 
rem Restrict NTLM: Outgoing NTLM traffic to remote servers - Deny All
reg add "HKLM\System\CurrentControlSet\Control\Lsa\MSV1_0" /v "RestrictSendingNTLMTraffic" /t REG_DWORD /d "2" /f


rem =================================== Windows Settings ===================================
rem ----------------------------------- Personalization ------------------------------------
rem ..................................... Background .......................................

rem Choose your picture (Black/Dark recommended)
reg add "HKCU\Control Panel\Desktop" /v "Wallpaper" /t REG_SZ /d "D:\Software\Temp\Pics\MLP\Wallpaper.jpg" /f

rem Choose a fit / 10 - Fill / 6 - Fit / 2 - Stretch / 0 - Tile/Center
reg add "HKCU\Control Panel\Desktop" /v "WallpaperStyle" /t REG_SZ /d "2" /f

rem ________________________________________________________________________________________

rem 60-100% Wallpaper's image quality / 85 - Default
reg add "HKCU\Control Panel\Desktop" /v "JPEGImportQuality" /t REG_DWORD /d "100" /f


rem =================================== Windows Settings ===================================
rem ----------------------------------- Personalization ------------------------------------
rem ....................................... Colors .........................................

rem 1 - Automatically pick an accent color from my background
reg add "HKCU\Control Panel\Desktop" /v "AutoColorization" /t REG_SZ /d "1" /f

rem 1 - Transparency Effects
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "0" /f

rem 1 - Show accent color on the following surfaces - Start, taskbar, and action center
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "ColorPrevalence" /t REG_DWORD /d "1" /f

rem 1 - Show accent color on the following surfaces - Title bars
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "ColorPrevalence" /t REG_DWORD /d "1" /f


rem =================================== Windows Settings ===================================
rem ----------------------------------- Personalization ------------------------------------
rem ..................................... Lock screen ......................................

rem 1 - Get fun facts, tips, tricks, and more on your lock screen (ADs) / Windows Spotlight
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenOverlayEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_TOASTS_ABOVE_LOCK" /t REG_DWORD /d "0" /f

rem ________________________________________________________________________________________
rem 1 - Disable LockScreen
reg add "HKLM\Software\Policies\Microsoft\Windows\Personalization" /v "NoLockScreen" /t REG_DWORD /d "1" /f

rem 1 - Disable Sign-in Screen Background Image
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /v "DisableLogonBackgroundImage" /t REG_DWORD /d "1" /f

rem 1 - Disable Windows spotlight (provides features such as different background images and text on the lock screen, suggested apps)
reg add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsSpotlightFeatures" /t REG_DWORD /d "1" /f


rem =================================== Windows Settings ===================================
rem ----------------------------------- Personalization ------------------------------------
rem ..................................... Lock screen ......................................
rem . . . . . . . . . . . . . . . . . Screen saver settings . . . . . . . . . . . . . . . .
 
rem 0 - No screen saver is selected / 1 - A screen saver is selected
reg add "HKCU\Control Panel\Desktop" /v "ScreenSaveActive" /t REG_SZ /d "1" /f

rem Specifies whether the screen saver is password-protected / 0 - No / 1 - Yes
reg add "HKCU\Control Panel\Desktop" /v "ScreenSaverIsSecure" /t REG_SZ /d "1" /f

rem Specifies in seconds how long the System remains idle before the screen saver starts
reg add "HKCU\Control Panel\Desktop" /v "ScreenSaveTimeOut" /t REG_SZ /d "250" /f

rem Screensaver - Mystify.scr
reg add "HKCU\Control Panel\Desktop" /v "SCRNSAVE.EXE" /t REG_SZ /d "Mystify.scr" /f


rem =================================== Windows Settings ===================================
rem ----------------------------------- Personalization ------------------------------------
rem ........................................ Start .........................................

rem 1 - Show suggestions occasionally in Start (ADs)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d "0" /f

rem 1 - Show recently opened items in Jump Lists on Start or the taskbar
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackDocs" /t REG_DWORD /d "0" /f


rem =================================== Windows Settings ===================================
rem ----------------------------------- Personalization ------------------------------------
rem ....................................... Taskbar ........................................

rem Lock the taskbar
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarSizeMove" /t REG_DWORD /d "0" /f

rem Replace Command Prompt with Windows Powershell in the menu when I right-click the start button or press Windows key+X
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DontUsePowerShellOnWinX" /t REG_DWORD /d "1" /f

rem Combine taskbar buttons / 0 - Always hide labels / 1 - When taskbar is full / 2 - Never
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarGlomLevel" /t REG_DWORD /d "0" /f

rem 1 - Show contacts on the taskbar
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" /v "PeopleBand" /t REG_DWORD /d "0" /f

rem ________________________________________________________________________________________
rem 0 - Turn on Quiet Hours in Action Center / Disable/Hide the message: Turn on Windows Security Center service
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_TOASTS_ENABLED" /t REG_DWORD /d "0" /f

rem 0 - Hide Task View button
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTaskViewButton" /t REG_DWORD /d "0" /f

rem 0 - Disable Cortana in Taskbar search
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaEnabled" /t REG_DWORD /d "0" /f

rem 0 - Cortana Button on Taskbar / 0 - Hide / 1 - Show
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowCortanaButton" /t REG_DWORD /d "0" /f

rem 0 - Hide Taskbar search / 1 - Show search icon / 2 - Show search box
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d "0" /f


rem =================================== Windows Settings ===================================
rem ----------------------------------- Personalization ------------------------------------
rem ....................................... Taskbar ........................................
rem . . . . . . . . . . . . . Select which icons appear on the taskbar . . . . . . . . . . .

rem 0 - Always show all icons in the notification area / 1 - Hide Inactive Icons
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "EnableAutoTray" /t REG_DWORD /d "0" /f


rem =================================== Windows Settings ===================================
rem ----------------------------------- Personalization ------------------------------------
rem ....................................... Taskbar ........................................
rem . . . . . . . . . . . . . . . . . Turn on system icons . . . . . . . . . . . . . . . . .

rem ________________________________________________________________________________________
rem 1 - Hide Action Center System Tray Icon in Taskbar
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d "0" /f

rem 1 - Hide Meet Now Tray Icon in Taskbar
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCAMeetNow" /t REG_DWORD /d "1" /f

rem 1 - Hide Network System Tray Icon in Taskbar
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCANetwork" /t REG_DWORD /d "1" /f

rem 1 - Hide Power System Tray Icon in Taskbar
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCAPower" /t REG_DWORD /d "0" /f

rem 1 - Hide Volume System Tray Icon in Taskbar
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCAVolume" /t REG_DWORD /d "1" /f


rem =================================== Windows Settings ===================================
rem ----------------------------------- Personalization ------------------------------------
rem ....................................... Themes .........................................
rem . . . . . . . . . . . . . . . . . Desktop Icon Settings . . . . . . . . . . . . . . . .

rem Hide Control Panel
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}" /t REG_DWORD /d "1" /f

rem Hide Network
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" /t REG_DWORD /d "1" /f

rem Hide OneDrive
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /t REG_DWORD /d "1" /f

rem Hide Recycle Bin
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{645FF040-5081-101B-9F08-00AA002F954E}" /t REG_DWORD /d "1" /f

rem Hide Quick access
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{679f85cb-0220-4080-b29b-5540cc05aab6}" /t REG_DWORD /d "1" /f

rem Hide This PC
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d "1" /f

rem Hide User's Files
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{59031a47-3f72-44a7-89c5-5595fe6b30ee}" /t REG_DWORD /d "1" /f


rem =================================== Windows Settings ===================================
rem ----------------------------------- Personalization ------------------------------------
rem ....................................... Themes .........................................
rem . . . . . . . . . . . . . . . . . . . . Sounds . . . . . . . . . . . . . . . . . . . . .

rem Delete Windows Default Sounds (Permanently)
reg delete "HKCU\AppEvents\Schemes\Apps" /f

rem When windows detects communications activity / 0 - Mute all other sounds / 1 - Reduce all other by 80% / 2 - Reduce all other by 50% / 3 - Do nothing
reg add "HKCU\Software\Microsoft\Multimedia\Audio" /v "UserDuckingPreference" /t REG_DWORD /d "3" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------

rem Let apps access ... / 0 - Default / 1 - Enabled / 2 - Disabled
reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessGazeInput" /t REG_DWORD /d "2" /f

rem Let apps access ... / 0 - Default / 1 - Enabled / 2 - Disabled
reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessMotion" /t REG_DWORD /d "2" /f

rem Let apps access ... / 0 - Default / 1 - Enabled / 2 - Disabled
reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessPhone" /t REG_DWORD /d "2" /f

rem Disable Cortana
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "AllowCortana" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaCapabilities" /t REG_SZ /d "" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaConsent" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "DeviceHistoryEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "IsAssignedAccess" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "IsWindowsHelloActive" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Windows Search" /v "CortanaConsent" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\PolicyManager\default\Experience\AllowCortana" /v "value" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\SearchCompanion" /v "DisableContentFileUpdates" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowIndexingEncryptedStoresOrItems" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d "3" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Search" /v "DoNotUseWebResults" /t REG_DWORD /d "1" /f

rem 1 - Let Cortana respond to "Hey Cortana"
reg add "HKCU\Software\Microsoft\Speech_OneCore\Preferences" /v "VoiceActivationOn" /t REG_DWORD /d "0" /f

rem 1- Let Cortana listen for my commands when I press Windows key + C
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "VoiceShortcut" /t REG_DWORD /d "0" /f

rem 1 - Use Cortana even when my device is locked
reg add "HKCU\Software\Microsoft\Speech_OneCore\Preferences" /v "VoiceActivationEnableAboveLockscreen" /t REG_DWORD /d "0" /f

rem Disable keyboard input/monitoring in apps like Calc, Edge, Search, Start, Store
schtasks /Change /TN "Microsoft\Windows\TextServicesFramework\MsCtfMonitor" /Disable

rem Remove Cortana app
rem takeown /s %computername% /u %username% /f "%WINDIR%\SystemApps\Microsoft.Windows.Search_cw5n1h2txyewy\SearchApp.exe"
rem icacls "%WINDIR%\SystemApps\Microsoft.Windows.Search_cw5n1h2txyewy\SearchApp.exe" /inheritance:r /grant:r %username%:F
rem taskkill /im SearchApp.exe /f
rem del "%WINDIR%\SystemApps\Microsoft.Windows.Search_cw5n1h2txyewy\SearchApp.exe" /s /f /q


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ...................................... Account info ....................................

rem Allow/Deny - Allow access to account info on this device
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v "Value" /t REG_SZ /d "Allow" /f

rem Allow/Deny - Allow apps to access your account info
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v "Value" /t REG_SZ /d "Allow" /f

rem Let apps access my name, picture, and other account info / 0 - Default / 1 - Enabled / 2 - Disabled
rem reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessAccountInfo" /t REG_DWORD /d "0" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem .................................... Activity History ..................................

rem Allow/Deny - Allow access to app diagnostic info on this device
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\activity" /v "Value" /t REG_SZ /d "Deny" /f

rem Allow/Deny - Allow Apps to access diagnostic info about your other apps
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\activity" /v "Value" /t REG_SZ /d "Deny" /f

rem Collect Activity History / 0 - Disabled / 1 - Enabled
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f

rem Let Windows collect my activities from this PC / 0 - Disabled / 1 - Enabled
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "0" /f

rem Let Windows collect my activities from this PC to the cloud / 0 - Disabled / 1 - Enabled
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d "0" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ..................................... App diagnostic ...................................

rem Allow/Deny - Allow access to app diagnostic info on this device
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics" /v "Value" /t REG_SZ /d "Deny" /f

rem Allow/Deny - Allow Apps to access diagnostic info about your other apps
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics" /v "Value" /t REG_SZ /d "Deny" /f

rem Let apps access diagnostic information / 0 - Default / 1 - Enabled / 2 - Disabled
rem reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsGetDiagnosticInfo" /t REG_DWORD /d "2" /f

rem ________________________________________________________________________________________
rem reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{2297E4E2-5DBE-466D-A12B-0F8286F0D9CA}" /v "Value" /t REG_SZ /d "Deny" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem .................................... Background apps ..................................

rem Let apps run in the background / 1 - Enabled / 0 - Disabled
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d "0" /f

rem Let apps run in the background / 0 - Enabled / 1 - Disabled
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d "1" /f

rem Let apps run in the background / 0 - Default / 1 - Enabled / 2 - Disabled
reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsRunInBackground" /t REG_DWORD /d "2" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ....................................... Calendar .......................................

rem Allow/Deny - Allow access to calendars on this device
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments" /v "Value" /t REG_SZ /d "Deny" /f

rem Allow/Deny - Allow apps to access your calendar
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments" /v "Value" /t REG_SZ /d "Deny" /f

rem Let Windows apps access contacts / 0 - Default / 1 - Enabled / 2 - Disabled
rem reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessCalendar" /t REG_DWORD /d "2" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ..................................... Call history .....................................

rem Allow/Deny - Allow access to call history on this device
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory" /v "Value" /t REG_SZ /d "Deny" /f

rem Allow/Deny - Allow apps to access your call history
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory" /v "Value" /t REG_SZ /d "Deny" /f

rem Let apps access my call history / 0 - Default / 1 - Enabled / 2 - Disabled
rem reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessCallHistory" /t REG_DWORD /d "2" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ........................................ Camera ........................................

rem Allow/Deny - Allow access to camera on this device
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam" /v "Value" /t REG_SZ /d "Deny" /f

rem Allow/Deny - Allow Apps to access your camera
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam" /v "Value" /t REG_SZ /d "Deny" /f

rem Let apps use my camera / 0 - Default / 1 - Enabled / 2 - Disabled
rem reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessCamera" /t REG_DWORD /d "2" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessCamera_ForceAllowTheseApps" /t REG_MULTI_SZ /d "" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessCamera_ForceDenyTheseApps" /t REG_MULTI_SZ /d "" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessCamera_UserInControlOfTheseApps" /t REG_MULTI_SZ /d "" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ..................................... Cellular Data ....................................

rem Allow/Deny - Allow access to cellular data on this device
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\cellularData" /v "Value" /t REG_SZ /d "Deny" /f

rem Allow/Deny - Allow apps to access your cellular data
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\cellularData" /v "Value" /t REG_SZ /d "Deny" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ......................................... Chat .........................................

rem Allow/Deny - Allow access to messaging on this device
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat" /v "Value" /t REG_SZ /d "Deny" /f

rem Allow/Deny - Allow Apps to read or send messages
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat" /v "Value" /t REG_SZ /d "Deny" /f

rem ________________________________________________________________________________________
reg add "HKCU\Software\Microsoft\Messaging" /v "CloudServiceSyncEnabled" /t REG_DWORD /d "0" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ....................................... Contacts .......................................

rem Allow/Deny - Allow access to contacts on this device
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts" /v "Value" /t REG_SZ /d "Deny" /f

rem Allow/Deny - Allow Apps to access your contacts
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts" /v "Value" /t REG_SZ /d "Deny" /f

rem Let Windows apps access contacts / 0 - Default / 1 - Enabled / 2 - Disabled
rem reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessContacts" /t REG_DWORD /d "2" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ....................................... Documents ......................................

rem Allow/Deny - Document libraries access for this device
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary" /v "Value" /t REG_SZ /d "Deny" /f

rem Allow/Deny - Allow Apps to access your documents library
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary" /v "Value" /t REG_SZ /d "Deny" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ................................... Downloads folder ...................................

rem Allow/Deny - Downloads folders access on this device
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\downloadsFolder" /v "Value" /t REG_SZ /d "Deny" /f

rem Allow/Deny - Allow Apps to access your downloads folder
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\downloadsFolder" /v "Value" /t REG_SZ /d "Deny" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ......................................... Email ........................................

rem Allow/Deny - Allow access to email on this device
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email" /v "Value" /t REG_SZ /d "Deny" /f

rem Allow/Deny - Allow apps to access your email
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email" /v "Value" /t REG_SZ /d "Deny" /f

rem Let apps access and send email / 0 - Default / 1 - Enabled / 2 - Disabled
rem reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessEmail" /t REG_DWORD /d "2" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ................................. Feedback & diagnostics ...............................

rem Diagnostic and usage data - Select how much data you send to Microsoft / 0 - Security (Not aplicable on Home/Pro, it resets to Basic) / 1 - Basic / 2 - Enhanced (Hidden) / 3 - Full
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "3" /f
rem reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\WINEVT\Channels\Microsoft-Windows-Application-Experience/Program-Telemetry" /v "Enabled" /t REG_DWORD /d "0" /f
rem reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /v "AllowDeviceNameInTelemetry" /t REG_DWORD /d "0" /f
rem reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
rem reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /v "DoNotShowFeedbackNotifications" /t REG_DWORD /d "1" /f
rem reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /v "MaxTelemetryAllowed" /t REG_DWORD /d "0" /f
rem reg add "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f

rem 1 - Let Microsoft provide more tailored experiences with relevant tips and recommendations by using your diagnostic data
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableTailoredExperiencesWithDiagnosticData" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "0" /f

rem Feedback Frequency - Windows should ask for my feedback: 0 - Never / Removed - Automatically
reg add "HKCU\Software\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /t REG_DWORD /d "0" /f

rem ________________________________________________________________________________________
rem 0 - Disable Help Experience Improvement Program (HEIP)
reg add "HKCU\Software\Microsoft\Assistance\Client\1.0\Settings" /v "ImplicitFeedback" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Assistance\Client\1.0\Settings" /v "OnlineAssist" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Assistance\Client\1.0\Settings" /v "FirstTimeHelppaneStartup" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Assistance\Client\1.0\Settings" /v "NoActiveHelp" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Assistance\Client\1.0\Settings" /v "NoExplicitFeedback" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Assistance\Client\1.0\Settings" /v "NoImplicitFeedback" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Assistance\Client\1.0\Settings" /v "NoOnlineAssist" /t REG_DWORD /d "1" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ...................................... File System .....................................

rem Allow/Deny - File system access for this device
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess" /v "Value" /t REG_SZ /d "Deny" /f

rem Allow/Deny - Allow Apps to access your file system
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess" /v "Value" /t REG_SZ /d "Deny" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ........................................ General ......................................

rem Let apps use advertising ID to make ads more interesting to you based on your app usage
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d "1" /f

rem 0 - Let websites provide locally relevant content by accessing my language list (let browsers access your local language)
reg add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f

rem 1 - Let Windows track app launches to improve Start and search results (Remember commands typed in Run) / 0 - Disable and Disable "Show most used apps"
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackProgs" /t REG_DWORD /d "1" /f

rem 1 - Show me suggested content in the Settings app
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338393Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353694Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353696Enabled" /t REG_DWORD /d "0" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ....................................... Location .......................................

rem 1 - Location for this device is Off
rem reg add "HKLM\Software\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocation" /t REG_DWORD /d "1" /f
rem reg add "HKLM\Software\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocationScripting" /t REG_DWORD /d "1" /f
rem reg add "HKLM\Software\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableSensors" /t REG_DWORD /d "1" /f
rem reg add "HKLM\Software\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableWindowsLocationProvider" /t REG_DWORD /d "1" /f

rem 0 - Default / 1 - Enabled / 2 - Disabled
reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessLocation" /t REG_DWORD /d "0" /f

rem ________________________________________________________________________________________
rem reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /v "Value" /t REG_SZ /d "Deny" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ....................................... Messaging ......................................

rem Let apps read or send messages (text or MMS) / 0 - Default / 1 - Enabled / 2 - Disabled
reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessMessaging" /t REG_DWORD /d "2" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ...................................... Microphone ......................................

rem Allow/Deny - Allow access to the microphone on this device
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone" /v "Value" /t REG_SZ /d "Deny" /f

rem Allow/Deny - Allow Apps to access your microphone
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone" /v "Value" /t REG_SZ /d "Deny" /f

rem Let apps use my microphone / 0 - Default / 1 - Enabled / 2 - Disabled
rem reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessMicrophone" /t REG_DWORD /d "2" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem .................................... Music library .....................................

rem Allow/Deny - Allow access to screenshot border settings on this device
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\musicLibrary" /v "Value" /t REG_SZ /d "Deny" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ..................................... Notifications ....................................

rem Allow/Deny - Allow access to user notifications on this device
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v "Value" /t REG_SZ /d "Allow" /f

rem Allow/Deny - Allow apps to access your notifications
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v "Value" /t REG_SZ /d "Allow" /f

rem Let apps access my notifications / 0 - Default / 1 - Enabled / 2 - Disabled
rem reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessNotifications" /t REG_DWORD /d "0" /f

rem ________________________________________________________________________________________
rem reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{52079E78-A92B-413F-B213-E8FE35712E72}" /v "Value" /t REG_SZ /d "Deny" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ..................................... Other devices ....................................

rem Allow/Deny - Communicate with unpaired devices
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetooth" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync" /v "Value" /t REG_SZ /d "Deny" /f

rem Allow/Deny - Use trusted devices
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync" /v "Value" /t REG_SZ /d "Deny" /f

rem Let apps automatically share and sync info with wireless devices that don't explicitly pair with your PC, tablet, or phone / 0 - Default / 1 - Enabled / 2 - Disabled
rem reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsSyncWithDevices" /t REG_DWORD /d "2" /f
rem reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessTrustedDevices" /t REG_DWORD /d "2" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ..................................... Phone calls ......................................

rem Allow/Deny - Allow phone calls on this device
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCall" /v "Value" /t REG_SZ /d "Deny" /f

rem Allow/Deny - Allow apps to make phone calls
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCall" /v "Value" /t REG_SZ /d "Deny" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ....................................... Pictures .......................................

rem Allow/Deny - Pictures library access for this device
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary" /v "Value" /t REG_SZ /d "Deny" /f

rem Allow/Deny - Allow apps to access your pictures library
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary" /v "Value" /t REG_SZ /d "Deny" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ............................... Speech, inking, & typing ...............................

rem ________________________________________________________________________________________
reg add "HKCU\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" /v "HasAccepted" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\Input" /v "InputServiceEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\Input" /v "InputServiceEnabledForCCI" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\InputPersonalization" /v "AllowInputPersonalization" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /t REG_DWORD /d "1" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ........................................ Radios ........................................

rem Allow/Deny - Allow access to control radios on this device
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\radios" /v "Value" /t REG_SZ /d "Deny" /f

rem Allow/Deny - Allow Apps to control device radios
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\radios" /v "Value" /t REG_SZ /d "Deny" /f

rem Let apps control radios / 0 - Default / 1 - Enabled / 2 - Disabled
rem reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessRadios" /t REG_DWORD /d "2" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem .................................. Screenshot borders ..................................

rem Allow/Deny - Allow access to screenshot border settings on this device
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureWithoutBorder" /v "Value" /t REG_SZ /d "Deny" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ................................. Screenshots and apps .................................

rem Allow/Deny - Allow Apps to take screenshots of various windows or displays on this device
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureProgrammatic" /v "Value" /t REG_SZ /d "Deny" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ......................................... Tasks ........................................

rem Allow/Deny - Allow access to tasks on this device
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks" /v "Value" /t REG_SZ /d "Deny" /f

rem Allow/Deny - Allow Apps to access your tasks
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks" /v "Value" /t REG_SZ /d "Deny" /f

rem Let apps access tasks / 0 - Default / 1 - Enabled / 2 - Disabled
rem reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsAccessTasks" /t REG_DWORD /d "2" /f


rem =================================== Windows Settings ===================================
rem ---------------------------------------- Privacy ---------------------------------------
rem ........................................ Videos ........................................

rem Allow/Deny - Videos library access for this device
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary" /v "Value" /t REG_SZ /d "Deny" /f

rem Allow/Deny - Allow Apps to access your videos library
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary" /v "Value" /t REG_SZ /d "Deny" /f


rem =================================== Windows Settings ===================================
rem --------------------------------------- System -----------------------------------------
rem ........................................ About .........................................

rem PC Name: LianLiPC-7NB (Computer name should not be longer than 15 characters, no spaces either)
reg add "HKLM\System\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v "ComputerName" /t REG_SZ /d "LianLiPC-7NB" /f
reg add "HKLM\System\CurrentControlSet\Control\ComputerName\ComputerName" /v "ComputerName" /t REG_SZ /d "LianLiPC-7NB" /f
reg add "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v "Hostname" /t REG_SZ /d "LianLiPC-7NB" /f
reg add "HKLM\System\CurrentControlSet\Services\Tcpip\Parameters" /v "NV Hostname" /t REG_SZ /d "LianLiPC-7NB" /f

rem Support
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\OEMInformation" /v "Manufacturer" /t REG_SZ /d "TairikuOkami" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\OEMInformation" /v "Model" /t REG_SZ /d "MSI Radeon RX 580 ARMOR 8G OC" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\OEMInformation" /v "SupportHours" /t REG_SZ /d "Within 24-48 hours" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\OEMInformation" /v "SupportPhone" /t REG_SZ /d "TairikuOkami@pm.me" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\OEMInformation" /v "SupportURL" /t REG_SZ /d "https://discordapp.com/TairikuOkami#2826" /f

rem Computer Description
reg add "HKLM\System\CurrentControlSet\services\LanmanServer\Parameters" /v "srvcomment" /t REG_SZ /d "100/10 MBps" /f


rem =================================== Windows Settings ===================================
rem --------------------------------------- System -----------------------------------------
rem ........................................ About .........................................
rem . . . . . . . . . . . . . . . . . . . System info . . . . . . . . . . . . . . . . . . .

rem System info (Logo - 120x120.bmp)
rem shell:::{BB06C0E4-D293-4f75-8A90-CB05B6477EEE}
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\OEMInformation" /v "Logo" /t REG_SZ /d "D:\Software\Temp\Pics\Logo.bmp" /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v "RegisteredOrganization" /t REG_SZ /d "(-_-)" /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v "RegisteredOwner" /t REG_SZ /d "Brony" /f

rem Remote Settings - Disable Remote Assistance
reg add "HKLM\System\CurrentControlSet\Control\Remote Assistance" /v "fAllowToGetHelp" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Remote Assistance" /v "fAllowFullControl" /t REG_DWORD /d "0" /f

rem System Protection - Enable System restore and Set the size
rem reg delete "HKLM\Software\Policies\Microsoft\Windows NT\SystemRestore" /v "DisableSR" /f
rem reg delete "HKLM\Software\Policies\Microsoft\Windows NT\SystemRestore" /v "DisableConfig" /f
rem reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SPP\Clients" /v " {09F7EDC5-294E-4180-AF6A-FB0E6A0E9513}" /t REG_MULTI_SZ /d "1" /f
rem schtasks /Change /TN "Microsoft\Windows\SystemRestore\SR" /Enable
rem vssadmin Resize ShadowStorage /For=C: /On=C: /Maxsize=5GB
rem sc config wbengine start= demand
rem sc config swprv start= demand
rem sc config vds start= demand
rem sc config VSS start= demand

rem System Protection - Disable System restore and Set the size
reg add "HKLM\Software\Policies\Microsoft\Windows NT\SystemRestore" /v "DisableSR" /t REG_DWORD /d "1" /f
schtasks /Change /TN "Microsoft\Windows\SystemRestore\SR" /Disable
vssadmin Resize ShadowStorage /For=C: /On=C: /Maxsize=320MB

rem Advanced system settings - Performance - Advanced - Processor Scheduling
rem 0 - Foreground and background applications equally responsive / 1 - Foreground application more responsive than background / 2 - Best foreground application response time (Default)
rem 38 - Adjust for best performance of Programs / 24 - Adjust for best performance of Background Services
reg add "HKLM\System\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation " /t REG_DWORD /d "38" /f

rem Advanced system settings - Performance - Advanced - Virtual memory
rem Disable pagefile
wmic computersystem where name="%computername%" set AutomaticManagedPagefile=False
wmic pagefileset where name="%SystemDrive%\\pagefile.sys" set InitialSize=0,MaximumSize=0
wmic pagefileset where name="%SystemDrive%\\pagefile.sys" delete

rem Advanced system settings - Startup and Recovery
rem 5 - 5 secs / Time to display list of operating systems
bcdedit /timeout 5

rem Advanced system settings - Startup and Recovery
rem 1 - Automatically Restart (on System Failure)
reg add "HKLM\System\CurrentControlSet\Control\CrashControl" /v "AutoReboot" /t REG_DWORD /d "0" /f

rem ________________________________________________________________________________________
rem Disable Remote Assistance
sc config RemoteRegistry start= disabled
reg add "HKLM\Software\Policies\Microsoft\Windows\WinRM\Service\WinRS" /v "AllowRemoteShellAccess" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "fAllowToGetHelp" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "fAllowUnsolicited" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "fAllowUnsolicitedFullControl" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "fDenyTSConnections" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "TSAppCompat" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "TSEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "TSUserEnabled" /t REG_DWORD /d "0" /f

rem Encrypt the Pagefile
rem fsutil behavior set EncryptPagingFile 1


rem =================================== Windows Settings ===================================
rem --------------------------------------- System -----------------------------------------
rem ..................................... Clipboard ........................................

rem Save multiple items / 0 - Disable / 1 - Enable
reg add "HKCU\Software\Microsoft\Clipboard" /v "EnableClipboardHistory " /t REG_DWORD /d "0" /f

rem Sync across devices / 0 - Disable / 1 - Enable
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /v "AllowCrossDeviceClipboard " /t REG_DWORD /d "0" /f

rem ________________________________________________________________________________________
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /v "AllowClipboardHistory" /t REG_DWORD /d "0" /f


rem =================================== Windows Settings ===================================
rem --------------------------------------- System -----------------------------------------
rem ............................... Notifications & actions ................................

rem 1 - Get tips, tricks, and suggestions as you use Windows (ADs)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338389Enabled" /t REG_DWORD /d "0" /f

rem 0 - Get notifications from apps and other senders
reg add "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoToastApplicationNotification" /t REG_DWORD /d "0" /f

rem 1 - Show me the Windows welcome experience after updates and occasionally when I sign in to highlight what's new and suggested (ADs)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-310093Enabled" /t REG_DWORD /d "0" /f

rem 1 - Suggest ways I can finish setting up my device to get the most out of Windows
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement" /v "ScoobeSystemSettingEnabled" /t REG_DWORD /d "0" /f

rem ________________________________________________________________________________________
rem reg add "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoCloudApplicationNotification" /t REG_DWORD /d "1" /f
rem reg add "HKLM\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoCloudApplicationNotification" /t REG_DWORD /d "1" /f


rem =================================== Windows Settings ===================================
rem --------------------------------------- System -----------------------------------------
rem .................................... Power & sleep .....................................
rem . . . . . . . . . . . . . . . . Additional power settings . . . . . . . . . . . . . . .

rem Change plan settings - Change advanced power settings - Hard disk - Turn off hard disk (on battery) after
rem 0 - Never / 4294967295 - max value in seconds
reg add "HKLM\Software\Policies\Microsoft\Power\PowerSettings\E69653CA-CF7F-4F05-AA73-CB833FA90AD4" /v "DCSettingIndex" /t REG_DWORD /d "0" /f

rem Change plan settings - Change adavnced power settings - Hard disk - Turn off hard disk (plugged in) after
rem 0 - Never / 4294967295 - max value in seconds
reg add "HKLM\Software\Policies\Microsoft\Power\PowerSettings\6738E2C4-E8A5-4A42-B16A-E040E769756E" /v "ACSettingIndex" /t REG_DWORD /d "0" /f


rem =================================== Windows Settings ===================================
rem --------------------------------------- System -----------------------------------------
rem ................................. Shared Experiences ...................................

rem Let apps on other devices open apps and message apps on this device, and vice versa / 0 - Disabled
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP" /v "EnableRemoteLaunchToast" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /v "EnableCdp" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\System" /v "EnableMmx" /t REG_DWORD /d "0" /f


rem =================================== Windows Settings ===================================
rem --------------------------------------- System -----------------------------------------
rem ....................................... Storage ........................................

rem ________________________________________________________________________________________
rem fsutil storagereserve query C:
rem Dism /Online /Set-ReservedStorageState /State:Disabled /Quiet /NoRestart
rem 2/0/0 - Disable Reserved Storage (7GB) / 1/1/1 - Enabled
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\MiscPolicyInfo" /v "ShippedWithReserves" /t REG_DWORD /d "2" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\PassedPolicy" /v "ShippedWithReserves" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\ReserveManager" /v "ShippedWithReserves" /t REG_DWORD /d "0" /f

reg add "HKLM\Software\Policies\Microsoft\Windows\StorageSense" /v "AllowStorageSenseGlobal" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\StorageSense" /v "AllowStorageSenseTemporaryFilesCleanup" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\StorageSense" /v "ConfigStorageSenseCloudContentDehydrationThreshold" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\StorageSense" /v "ConfigStorageSenseRecycleBinCleanupThreshold" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\StorageSense" /v "ConfigStorageSenseDownloadsCleanupThreshold" /t REG_DWORD /d "0" /f
reg delete "HKLM\Software\Policies\Microsoft\Windows\StorageSense" /v "ConfigStorageSenseGlobalCadence" /f


rem =================================== Windows Settings ===================================
rem ----------------------------------- Time & language -------------------------------------
rem ..................................... Date & time .......................................

rem Time Zone - Central Europe Standard Time
tzutil /s "Central Europe Standard Time"


rem =================================== Windows Settings ===================================
rem ----------------------------------- Time & language -------------------------------------
rem ..................................... Date & time .......................................
rem . . . . . . . . . . . . Additional date, time, & regional settings . . . . . . . . . . .

rem Set Formats to Metric
reg add "HKCU\Control Panel\International" /v "iDigits" /t REG_SZ /d "2" /f
reg add "HKCU\Control Panel\International" /v "iLZero" /t REG_SZ /d "1" /f
reg add "HKCU\Control Panel\International" /v "iMeasure" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\International" /v "iNegNumber" /t REG_SZ /d "1" /f
reg add "HKCU\Control Panel\International" /v "iPaperSize" /t REG_SZ /d "1" /f
reg add "HKCU\Control Panel\International" /v "iTLZero" /t REG_SZ /d "1" /f
reg add "HKCU\Control Panel\International" /v "sDecimal" /t REG_SZ /d "," /f
reg add "HKCU\Control Panel\International" /v "sNativeDigits" /t REG_SZ /d "0123456789" /f
reg add "HKCU\Control Panel\International" /v "sNegativeSign" /t REG_SZ /d "-" /f
reg add "HKCU\Control Panel\International" /v "sPositiveSign" /t REG_SZ /d "" /f
reg add "HKCU\Control Panel\International" /v "NumShape" /t REG_SZ /d "1" /f

rem Set Time to 24h / Monday
reg add "HKCU\Control Panel\International" /v "iCalendarType" /t REG_SZ /d "1" /f
reg add "HKCU\Control Panel\International" /v "iDate" /t REG_SZ /d "1" /f
reg add "HKCU\Control Panel\International" /v "iFirstDayOfWeek" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\International" /v "iFirstWeekOfYear" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\International" /v "iTime" /t REG_SZ /d "1" /f
reg add "HKCU\Control Panel\International" /v "iTimePrefix" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\International" /v "sDate" /t REG_SZ /d "-" /f
reg add "HKCU\Control Panel\International" /v "sList" /t REG_SZ /d "," /f
reg add "HKCU\Control Panel\International" /v "sLongDate" /t REG_SZ /d "d MMMM, yyyy" /f
reg add "HKCU\Control Panel\International" /v "sMonDecimalSep" /t REG_SZ /d "." /f
reg add "HKCU\Control Panel\International" /v "sMonGrouping" /t REG_SZ /d "3;0" /f
reg add "HKCU\Control Panel\International" /v "sMonThousandSep" /t REG_SZ /d "," /f
reg add "HKCU\Control Panel\International" /v "sShortDate" /t REG_SZ /d "dd-MMM-yy" /f
reg add "HKCU\Control Panel\International" /v "sTime" /t REG_SZ /d ":" /f
reg add "HKCU\Control Panel\International" /v "sTimeFormat" /t REG_SZ /d "HH:mm:ss" /f
reg add "HKCU\Control Panel\International" /v "sShortTime" /t REG_SZ /d "HH:mm" /f
reg add "HKCU\Control Panel\International" /v "sYearMonth" /t REG_SZ /d "MMMM yyyy" /f

rem 244 - Set Location to United States / 143 - Slovakia
reg add "HKCU\Control Panel\International\Geo" /v "Nation" /t REG_SZ /d "143" /f


rem =================================== Windows Settings ===================================
rem ----------------------------------- Time & Language ------------------------------------
rem .................................. Region & Language ...................................
rem . . . . . . . . . . . . . . . Advanced keyboard settings . . . . . . . . . . . . . . . .

rem Language bar options - Advanced key settings - Change Key Sequence
rem 3 - Not assigned / 2 - CTRL+SHIFT / 1 - Left ALT+SHIFT
reg add "HKCU\Keyboard Layout\Toggle" /v "Language Hotkey" /t REG_SZ /d "3" /f
reg add "HKCU\Keyboard Layout\Toggle" /v "Hotkey" /t REG_SZ /d "3" /f
reg add "HKCU\Keyboard Layout\Toggle" /v "Layout Hotkey" /t REG_SZ /d "3" /f

rem ________________________________________________________________________________________
rem 2 - Enable Num Lock on Sign-in Screen / 2147483648 - Disable
reg add "HKCU\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_SZ /d "2" /f
reg add "HKU\.DEFAULT\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_SZ /d "2" /f



rem =================================== Windows Settings ===================================
rem ----------------------------------- Update & security ----------------------------------
rem ........................................ Backup .......................................

rem ________________________________________________________________________________________
rem 1 - Disable File History (Creating previous versions of files/Windows Backup)
reg add "HKLM\Software\Policies\Microsoft\Windows\FileHistory" /v "Disabled" /t REG_DWORD /d "1" /f


rem =================================== Windows Settings ===================================
rem ----------------------------------- Update & security ----------------------------------
rem .................................... Windows update ....................................

rem Check for installed updates
rem DISM /Online /get-packages

rem Change active hours (18 hours) 6am to 0am - Windows Updates will not automatically restart your device during active hours
reg add "HKLM\Software\Microsoft\WindowsUpdate\UX\Settings" /v "ActiveHoursStart" /t REG_DWORD /d "6" /f
reg add "HKLM\Software\Microsoft\WindowsUpdate\UX\Settings" /v "ActiveHoursEnd" /t REG_DWORD /d "0" /f

rem Restart options - 1 - We'll show a reminder when we're going to restart.
reg add "HKLM\Software\Microsoft\WindowsUpdate\UX\Settings" /v "RestartNotificationsAllowed" /t REG_DWORD /d "1" /f

rem 1 - Disable Malicious Software Removal Tool offered via Windows Updates (MRT) + Disable Heartbeat Telemetry
reg add "HKLM\Software\Microsoft\RemovalTools\MpGears" /v "HeartbeatTrackingIndex" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\RemovalTools\MpGears" /v "SpyNetReportingLocation" /t REG_MULTI_SZ /d "" /f
reg add "HKLM\Software\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /t REG_DWORD /d "1" /f


rem =================================== Windows Settings ===================================
rem ----------------------------------- Update & security ----------------------------------
rem .................................... Windows update ....................................
rem . . . . . . . . . . . . . . . . . . Advanced options . . . . . . . . . . . . . . . . . .

rem Choose how updates are delivered / 0 - Turns off Delivery Optimization / 1 - Gets or sends updates and apps to PCs on the same NAT only / 2 - Gets or sends updates and apps to PCs on the same local network domain / 3 - Gets or sends updates and apps to PCs on the Internet / 99 - Simple download mode with no peering / 100 - Use BITS instead of Windows Update Delivery Optimization
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /t REG_DWORD /d "0" /f


rem ==================================== Windows Shell =====================================


rem Add Reset permissions to Shell/Manually Reset permissions/Take Ownership
rem http://lallouslab.net/2013/08/26/resetting-ntfs-files-permission-in-windows-graphical-utility

rem Take Ownership
rem Files/Folders - https://www.youtube.com/watch?v=x7gjZMvQHu4
rem Registry - https://www.youtube.com/watch?v=M1l5ifYKefg
rem https://ss64.com/nt/icacls.html
rem https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/cc753024(v=ws.11)?
rem https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/cc753525(v=ws.11)?

rem Add "Take Ownership" Option in Files and Folders Context Menu in Windows
rem reg add "HKCR\*\shell\runas" /ve /t REG_SZ /d "Take ownership" /f
rem reg add "HKCR\*\shell\runas" /v "HasLUAShield" /t REG_SZ /d "" /f
rem reg add "HKCR\*\shell\runas" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
rem reg add "HKCR\*\shell\runas\command" /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F" /f
rem reg add "HKCR\*\shell\runas\command" /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F" /f
rem reg add "HKCR\Directory\shell\runas" /ve /t REG_SZ /d "Take ownership" /f
rem reg add "HKCR\Directory\shell\runas" /v "HasLUAShield" /t REG_SZ /d "" /f
rem reg add "HKCR\Directory\shell\runas" /v "NoWorkingDirectory" /t REG_SZ /d "" /f
rem reg add "HKCR\Directory\shell\runas\command" /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t" /f
rem reg add "HKCR\Directory\shell\runas\command" /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t" /f

rem Remove open in Windows Terminal from context menu
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{9F156763-7844-4DC4-B2B1-901F640F5155}" /t REG_SZ /d "" /f

rem Remove Send To from context Menu
reg delete "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\SendTo" /f

rem Remove Share from Context menu
reg delete "HKLM\Software\Classes\*\shellex\ContextMenuHandlers\ModernSharing" /f
reg delete "HKLM\Software\Classes\*\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKLM\Software\Classes\Drive\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKLM\Software\Classes\Drive\shellex\PropertySheetHandlers\Sharing" /f
reg delete "HKLM\Software\Classes\Directory\background\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKLM\Software\Classes\Directory\shellex\ContextMenuHandlers\Sharing" /f
reg delete "HKLM\Software\Classes\Directory\shellex\CopyHookHandlers\Sharing" /f
reg delete "HKLM\Software\Classes\Directory\shellex\PropertySheetHandlers\Sharing" /f


rem ==================================== Windows Store =====================================
rem -------------------------------------- Settings ----------------------------------------

rem Update apps automatically / 2 - Off / 4 - On
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate" /v "AutoDownload" /t REG_DWORD /d "4" /f

rem ________________________________________________________________________________________
rem Disable Auto-install subscribed/suggested apps (games like Candy Crush Soda Saga/Minecraft)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "ContentDeliveryAllowed" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEverEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContentEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\PushToInstall" /v "DisablePushToInstall" /t REG_DWORD /d "1" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager\Subscriptions" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager\SuggestedApps" /f



rem =================================== Windows Support ====================================


rem Do not run ResetBase! It breaks Windows Updates (0x800f081f) and it can not be repaired!

rem Apps - FixWin - http://www.thewindowsclub.com/fixwin-for-windows-10
rem Windows Cleanup - https://drive.google.com/file/d/1AQLr94IQPBpZYEyKNi_CsI5WAOC4BCKp/view
rem Windows Drivers - https://www.catalog.update.microsoft.com
rem Windows Forums - https://www.tenforums.com/general-support/58375-newly-added-tutorials.html
rem Windows Repair Install - https://www.tenforums.com/tutorials/16397-repair-install-windows-10-place-upgrade.html
rem Windows Repair Toolbox - https://windows-repair-toolbox.com
rem Windows Update Agent Reset - https://gallery.technet.microsoft.com/scriptcenter/reset-windows-update-agent-d824badc
rem Windows Update Troubleshooter - https://support.microsoft.com/en-us/windows/windows-update-troubleshooter-for-windows-10-19bc41ca-ad72-ae67-af3c-89ce169755dd
 
rem Boot into safemode - https://www.tenforums.com/tutorials/2304-boot-into-safe-mode-windows-10-a.html#option3
rem bcdedit /set {identifier} safeboot minimal
 
rem DISM Commands - https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/deployment-image-servicing-and-management--dism--command-line-options
rem DISM /Cleanup-Wim
rem DISM /Get-WimInfo /WimFile:E:\sources\install.esd /index:1
rem DISM /Get-WimInfo /WimFile:E:\sources\install.wim
rem DISM /Get-WimInfo /WimFile:E:\sources\install.wim /index:1
rem DISM /Online /Cleanup-Image /RestoreHealth /Source:WIM:e:\sources\install.wim:1 /LimitAccess

rem DISM Error - DISM's source files could be found error codes: 0x800f081f or 0x800f0906 or 0x800f0907
rem https://www.wintips.org/fix-dism-source-files-could-not-be-found-windows-10-8
rem reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Servicing" /v "LocalSourcePath" /t REG_EXPAND_SZ /d "wim:D:\install.wim:1" /f
rem reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Servicing" /v "UseWindowsUpdate" /t REG_DWORD /d "2" /f
rem https://forums.mydigitallife.net/threads/is-there-any-way-to-refresh-windows-without-having-to-re-install-all-your-programs.82476/page-2#post-1622515

rem Fix boot - https://neosmart.net/wiki/bootrec/#Bootrec_in_Windows10
rem bootrec / fixmbr
rem bootrec / fixboot
rem bootrec / rebuildbcd
 
rem Edit Registry (if you can not boot into Windows)
rem Boot Windows USB - Repair - Troubleshoot - CMD - type/enter
rem c:
rem cd windows
rem cmd
rem regedit
rem Select HKLM (or required key)
rem File - Load Hive - %WinDir%\System32\Config (select required Hive, like System/HKLM)
rem SAVE - Unload Hive (when you finish editing)

rem List processes/services
rem tasklist>c:\list.txt
rem tasklist/svc>c:\processlist.txt
rem wmic startup get caption,command > c:\StartupApps.txt

rem Malware Live - Real AV Testing
rem http://vxvault.net/ViriList.php
rem rem https://app.any.run/submissions
rem https://urlhaus.abuse.ch/browse
rem https://www.hybrid-analysis.com/submissions/sandbox/files
rem https://www.phishtank.com

rem Malware Tests - AV Check
rem rem https://demo.wd.microsoft.com/?ocid=cx-wddocs-testground
rem https://www.amtso.org/feature-settings-check-potentially-unwanted-applications
rem https://www.wicar.org/test-malware.html

rem Malware URL Check
rem https://urlscan.io
rem https://www.virustotal.com/gui/home/url
rem https://www.urlvoid.com

rem Reliability Monitor
rem perfmon /rel

rem https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-xp/bb490876(v=technet.10)?
rem https://docs.microsoft.com/en-us/archive/blogs/b8/redesigning-chkdsk-and-the-new-ntfs-health-model
rem Repair bad sectors
rem chkdsk %SystemDrive% /r

rem Reset password/gain admin access/enable local admin account
rem https://www.technibble.com/bypass-windows-logons-utilman/
rem copy /y c:\windows\system32\cmd.exe c:\windows\system32\utilman.exe
rem net user username password
rem net user Administrator /active:yes
rem net user Administrator *
rem net user NewGuy * /add
rem net localgroup Administrators NewGuy /add

rem To restart explorer
rem taskkill /im explorer.exe /f & explorer.exe

rem User Accounts - netplwiz


rem ==================================== Windows Waypoint ==================================


timeout 5

fsutil usn deletejournal /d /n c:

taskkill /im dllhost.exe /f
taskkill /im chrome.exe /f
taskkill /im msedge.exe /f
taskkill /im rundll32.exe /f

rem Clean Discord's caches
rd "%AppData%\Discord\Cache" /s /q
rd "%AppData%\Discord\Code Cache" /s /q

rem Clean caches and cookies (not covered by CookieAutodelete, since the browser is running) - chrome://settings/siteData
del "%LocalAppData%\Google\Chrome\User Data\Default\*history*." /s /f /q
del "%LocalAppData%\Google\Chrome\User Data\Default\Affiliation Database" /s /f /q
del "%LocalAppData%\Google\Chrome\User Data\Default\Affiliation Database-journal" /s /f /q
del "%LocalAppData%\Google\Chrome\User Data\Default\LOG" /s /f /q
del "%LocalAppData%\Google\Chrome\User Data\Default\LOG.old" /s /f /q
del "%LocalAppData%\Google\Chrome\User Data\Default\Login Data" /s /f /q
del "%LocalAppData%\Google\Chrome\User Data\Default\Login Data-journal" /s /f /q
del "%LocalAppData%\Google\Chrome\User Data\Default\Media History" /s /f /q
del "%LocalAppData%\Google\Chrome\User Data\Default\Media History-journal" /s /f /q
del "%LocalAppData%\Google\Chrome\User Data\Default\Network Action Predictor" /s /f /q
del "%LocalAppData%\Google\Chrome\User Data\Default\Network Action Predictor-journal" /s /f /q
del "%LocalAppData%\Google\Chrome\User Data\Default\Network Persistent State" /s /f /q
del "%LocalAppData%\Google\Chrome\User Data\Default\Reporting and NEL" /s /f /q
del "%LocalAppData%\Google\Chrome\User Data\Default\Reporting and NEL-journal" /s /f /q
del "%LocalAppData%\Google\Chrome\User Data\Default\QuotaManager" /s /f /q
del "%LocalAppData%\Google\Chrome\User Data\Default\QuotaManager-journal" /s /f /q
del "%LocalAppData%\Google\Chrome\User Data\Default\Shortcuts" /s /f /q
del "%LocalAppData%\Google\Chrome\User Data\Default\Shortcuts-journal" /s /f /q
del "%LocalAppData%\Google\Chrome\User Data\Default\Top Sites" /s /f /q
del "%LocalAppData%\Google\Chrome\User Data\Default\Top Sites-journal" /s /f /q
del "%LocalAppData%\Google\Chrome\User Data\Default\Visited Links" /s /f /q
rd "%LocalAppData%\Google\Chrome\User Data\Default\AutofillStrikeDatabase" /s /q
rd "%LocalAppData%\Google\Chrome\User Data\Default\BudgetDatabase" /s /q
rd "%LocalAppData%\Google\Chrome\User Data\Default\Cache" /s /q
rd "%LocalAppData%\Google\Chrome\User Data\Default\Code Cache" /s /q
rd "%LocalAppData%\Google\Chrome\User Data\Default\data_reduction_proxy_leveldb" /s /q
rd "%LocalAppData%\Google\Chrome\User Data\Default\databases" /s /q
rd "%LocalAppData%\Google\Chrome\User Data\Default\File System" /s /q
rd "%LocalAppData%\Google\Chrome\User Data\Default\GCM Store" /s /q
rd "%LocalAppData%\Google\Chrome\User Data\Default\GPUCache" /s /q
rd "%LocalAppData%\Google\Chrome\User Data\Default\IndexedDB" /s /q
rd "%LocalAppData%\Google\Chrome\User Data\Default\Local Storage" /s /q
rd "%LocalAppData%\Google\Chrome\User Data\Default\Platform Notifications" /s /q
rd "%LocalAppData%\Google\Chrome\User Data\Default\Service Worker" /s /q
rd "%LocalAppData%\Google\Chrome\User Data\Default\Session Storage" /s /q
rd "%LocalAppData%\Google\Chrome\User Data\Default\Sessions" /s /q
rd "%LocalAppData%\Google\Chrome\User Data\Default\shared_proto_db" /s /q
rd "%LocalAppData%\Google\Chrome\User Data\Default\Site Characteristics Database" /s /q
rd "%LocalAppData%\Google\Chrome\User Data\Default\VideoDecodeStats" /s /q

rem Run Wise Disk Cleaner
start "" /wait "%ProgramFiles(x86)%\Wise\Wise Disk Cleaner\WiseDiskCleaner.exe" -a -adv

rem Run Wise Registry Cleaner
start "" /wait "%ProgramFiles(x86)%\Wise\Wise Registry Cleaner\WiseRegCleaner.exe" -a -all

rem https://www.tenforums.com/general-support/95776-restart-fall-creators-update-reopens-apps-before.html#post1175516
rem https://www.tenforums.com/tutorials/49963-use-sign-info-auto-finish-after-update-restart-windows-10-a.html
rem https://www.tenforums.com/tutorials/138685-turn-off-automatically-restart-apps-after-sign-windows-10-a.html
shutdown /s /f /t 0

rem Is that all? Is that ALL? Yes, that is all. That is all. https://i.postimg.cc/3KkqQgG5/0.jpg
rem https://www.youtube.com/watch?v=MTjs5eo4BfI&feature=youtu.be&t=1m47s