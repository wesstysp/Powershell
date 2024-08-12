$users = get-msoluser -all | Where-Object {$_.islicensed -eq $true}

$alias = foreach ($user in $users) {
    $email = $user.userprincipalname
    $username = $email -split "@" | Select-Object -First 1
    $username  
     
}

$alias | Out-File "C:\Scripts\amc\AMCalias.csv"