
Start-Transcript -Path "C:\Windows\Logs\AxaltaApps\pulseremediation.log"
$testpath = "C:\Program Files (x86)\Common Files\Pulse Secure\JamUI\AXALTA.pulsepreconfig"

if(Test-Path -Path $testpath)

{
Write-Host "Config file Detected"
Start-Process -FilePath "C:\Program Files (x86)\Common Files\Pulse Secure\JamUI\jamCommand.exe" -ArgumentList "-importfile `"C:\Program Files (x86)\Common Files\Pulse Secure\JamUI\AXALTA.pulsepreconfig`""

if($?)

{
Write-Host "the pulse process is started"
}

else

{
Write-Host "the pulse process has not started"

}



}


Else

{

  Write-Host "Config File not Detected"
}

