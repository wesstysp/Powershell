$cred = Get-Credential -Credential webmap
New-PSDrive -Name F -Root \\192.168.0.78\WEBDNC -Persist -PSProvider FileSystem -Credential $cred