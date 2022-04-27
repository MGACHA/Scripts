#Choose location

$Main = 'C:\Users\training'

Set-Location $Main

#create the folder
New-Item -Path "$Main\month\" -Name "10 Oct 1999" -ItemType Directory

#change the properties
(Get-Item "$Main\month\10 Oct 1999").CreationTime=("10/10/1999 18:00:00")
(Get-Item "$Main\month\10 Oct 1999").LastWriteTime=("10/10/1999 18:00:00")
(Get-Item "$Main\month\10 Oct 1999").LastAccessTime=("10/10/1999 18:00:00")
