# choose the target folder

$Dir = 'D:\'

# Set location where needed file are saver 

Set-Location 'C:\Download'

# begin - move all files with name UK to folder United Kingdom

$UK = Get-ChildItem -Path "D:\United Kingdom" -Name *UK* 

$UKtarget = "United Kingdom"

$dd = Get-Date -Format ddMMyyyy

# create new file with today's date and copy files with name UK into.

foreach ($target in $UKtarget) {
    
    $Target2 = "$Dir\$target\$dd\"
    New-Item -Path $Target2 -ItemType Directory
    $UK | Copy-Item -Destination $Target2 -Verbose

    Invoke-Item $Target2
    Write-Host $Target2
}

#
