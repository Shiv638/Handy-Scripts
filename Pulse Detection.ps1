$testpath = "C:\Program Files (x86)\Common Files\Pulse Secure\JamUI\AXALTA.pulsepreconfig"

if(Test-Path -Path $testpath)

{
Write-Host "Config file Detected"
Exit 1
}


Else

{

  Write-Host "Config File not Detected"
  Exit 0  
}
