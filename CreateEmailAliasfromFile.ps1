#Connect-ExchangeOnline

#change file path to your CSV location
$users = Import-Csv -Path "C:\Scripts\amc\AMCalias2.csv"


foreach ($user in $users) {

    #Write-Host "$($user.users)@modernit.com"
    #Set-Mailbox $user.Users -EmailAddresses @{add="$($user.users)@modernit.com"}
    Set-Mailbox -Identity $user.Users -EmailAddresses SMTP:"$($user.users)@modernit.com",smtp:"$($user.users)@amcmodernit.com"
}