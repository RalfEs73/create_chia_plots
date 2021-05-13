$temp_path = "C:\Chia\Plot"
$farming_path = "D:\Crypto\Chia\Farm"

$Pool_Public_Key = "885614edddbedb105b1effad1e6449ff2ca6595906c4036e1fa76ad6210bc2f0e01121a084123187c37d80c3b08d289a"
$Farmer_Public_Key = "a690fa842e4081099b7813eba46609892d88d9d2b263a6f010f398e10b1df52b7c31b71dc4a6c93bffa1bc4a91b154e6"

$app_version = "1.1.5"
$CurrentUser = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
$CurrentUserName = $CurrentUser.split("\")[1]

Write-Host "Erstelle Plot"
C:\Users\ralfes\AppData\Local\chia-blockchain\app-1.1.5\resources\app.asar.unpacked\daemon\chia plots create -f $Farmer_Public_Key -p $Pool_Public_Key -k 32 -n 1 -r 2 -b 4608 -t $temp_path -d $farming_path
Write-Host "Done"
