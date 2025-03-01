<#PSScriptInfo

.VERSION 7.0

.AUTHOR KEN KIM

.COMPANYNAME SRP

.COPYRIGHT KEN KIM

.RELEASENOTES
Version history
1.0 - Initial release
2.0 - Result Output file to TXT
3.0 - Including comparison to SAMACCOUNT name also
4.0 - Simplified Script checking "Proxyaddresses" to catach any alternate valid SMTP email address.  
5.0 - Adding title to the email address match found.
6.0 - Generating output for proxy address match but no Title pulled.  Manual search would be needed.
7.0 - Mathcing proxy address to AD user and genertate output including Title

#>

#Prepare your CSV file containing email address you want to compare to AD and place it into a folder and modify $path accordingly.
#Please modify your result output folder path accordingly to your environment. Pleas esee the extpreesion after >> in If & Else section.
#Final two output files are the ones you need.  1. USer_Title.csv: Includes all matching eamil address with title.  2.Proxy_User_Title.csv: Includes matching proxy address with Title.


$path = "C:\KPW\listhere.csv"
$csv = Import-Csv $path 
Import-Module ActiveDirectory

foreach($line in $csv)
{
    $User = Get-ADUser -LDAPFilter "(&(objectclass=user)(proxyaddresses=smtp:$($line.Email)))"
    If ($User -eq $Null) {"User does not exist in AD   " + $line.Email >> c:\kpw\MAILnotfound.txt}
    Else {$line.Email >> c:\kpw\MAILfound.txt}  
    
}


#This section will use the MAILFound.txt from previous search to add title.  
#Result will include matching email address and title. It will not generate Title for Proxy address match.

Get-Content C:\kpw\MAILfound.txt | ForEach-Object {
Get-ADUser -Filter {EmailAddress -eq $_} -Properties DistinguishedName,Name,DisplayName,EmailAddress,Title | Select-Object SamAccountName,EmailAddress,Title} | Export-CSV -Path C:\kpw\User_Title.csv -NoTypeInformation



#This section will use the MAILFound.txt from previous search.  
#Result will include SRP matching proxy address but no title Info. Manual lookup of GAL needed for title search 

Get-Content C:\kpw\MAILfound.txt | ForEach-Object {
$User = Get-ADUser -Filter {EmailAddress -eq $_} 
If ($User -eq $Null) {$_ >> c:\kpw\User_No_Title.csv} 
}



#This section will use the User_No_Title.csv from previous search.  
#Result will include SRP matching proxy address with title, Name, Email Address Info. No more Manual lookup! 

Get-Content C:\kpw\User_No_Title.csv | ForEach-Object {
Get-ADUser -Filter "proxyAddresses -like '*$_*'" -Properties name, EmailAddress, title | Select-Object name, EmailAddress, title | Export-Csv "C:\kpw\Proxy_User_Title.csv" -NoTypeInformation -Append }
