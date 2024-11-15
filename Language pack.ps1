$dest = "C:\Windows\Logs\AxaltaApps"
Start-Transcript "$dest\Languagepack.log" -Append
 
 $currentLoggedOnUser = Get-Process -IncludeUserName -Name explorer | Select-Object -ExpandProperty UserName -Unique
 $CurrentUser = $CurrentLoggedOnUser.Split('\')[1]
 $user = Get-Aduser $CurrentUser -Properties c
 $Country =  $user.c
 $Country

 $language = Get-SystemPreferredUILanguage 

 if (($country -eq "ES") -and ($language -eq "en-US"))

{
Install-Language -Language 	es-ES
	
Set-SystemPreferredUILanguage -Language es-ES
restart-computer
}

elseif (($country -eq "FR") -and ($language -eq "en-US"))

{
Install-Language -Language 	fr-FR
	
Set-SystemPreferredUILanguage -Language fr-FR
restart-computer
}

elseif (($country -eq "DE") -and ($language -eq "en-US"))

{
Install-Language -Language 	de-DE
	
Set-SystemPreferredUILanguage -Language de-DE
restart-computer
}


elseif (($country -eq "AT") -and ($language -eq "en-US"))

{
Install-Language -Language 	de-DE
	
Set-SystemPreferredUILanguage -Language de-DE
restart-computer
}

elseif (($country -eq "SE") -and ($language -eq "en-US"))

{
Install-Language -Language 	sv-SE
	
Set-SystemPreferredUILanguage -Language sv-SE
restart-computer
}

elseif (($country -eq "IT") -and ($language -eq "en-US"))

{
Install-Language -Language 	it-IT
	
Set-SystemPreferredUILanguage -Language it-IT
restart-computer
}

elseif (($country -eq "CHN") -and ($language -eq "en-US"))

{
Install-Language -Language 	zh-CN
	
Set-SystemPreferredUILanguage -Language zh-CN
restart-computer
}

Else

{
Write-Host "Language not found"
}