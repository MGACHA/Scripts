$Main = 'C:\'
Set-Location $Main

$Folder = 'UK','USA','NZ','ROI','HK'

#create year folder
#$Year = Get-Date -Format yyyy

#Create date folder (-1) means one month back, (0) current month 

$MonthMM = Get-Date (Get-Date).AddMonths(-1) -Format MM

$MonthMMM = Get-Date (Get-Date).AddMonths(-1) -Format MMM

#Copy command (copy and paste) 

foreach ($Target in $Folder) {

    #Variable - folders path 'In' and 'Out'

    $ArchIn = "$Main\$Target\$MonthMM $MonthMMM\In"
    $ArchOut = "$Main\$Target\$MonthMM $MonthMMM\Out"
    $Arch = "$Main\$Target\Arch"
    
    #Create folders in path IN and OUT

    New-Item -Path $ArchIn -ItemType Directory
    New-Item -Path $ArchOut -ItemType Directory
    
    #Copy folders and files into destination Arch. * all files from
    
    Copy-Item -Path "$Main\$Target\*" -Destination "$ArchIn" -Recurse -Verbose #-WhatIf
    Copy-Item -Path "$Main\$Target\*" -Destination "$ArchOut" -Recurse -Verbose #-WhatIf
    Invoke-Item $Arch
    Write-Host $ArchIn
}
