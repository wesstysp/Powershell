Import-Module -Name Microsoft.Online.SharePoint.PowerShell



$sharepointURL = ""



Connect-SPOService -Url $sharepointURL



$csvFile = "C:\Temp\SiteUsers.csv"




$siteUserList = @()




$sites = Get-SPOSite



# Loop through each site

foreach ($site in $sites) {

  # Get a list of all users for the current site

  $users = Get-SPOUser -Site $site



  # Create custom object with site url and displayname

  $siteInfo = [PSCustomObject]@{

    SiteUrl = $site.Url

    Users = $($users.DisplayName -join ', ')

  }



  $siteUserList += $siteInfo



}



$siteUserList | Export-Csv -Path $csvFile -NoTypeInformation