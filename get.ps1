#Choose location

$Main = 'C:\Users\training'

Set-Location $Main

#get the files properties- datestamp

(Get-Itemproperty -Path "$Main\arch*").creationTime 
Get-ChildItem -Path "$Main\arch*"| select Name,CreationTime,LastAccessTime,LastWritetime 
Get-ChildItem -Path "$Main\arch*"| Where-Object {$_.CreationTime -gt (Get-Date).Minute }
