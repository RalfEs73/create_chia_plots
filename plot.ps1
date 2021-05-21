$Pool_Public_Key = "885614edddbedb105b1effad1e6449ff2ca6595906c4036e1fa76ad6210bc2f0e01121a084123187c37d80c3b08d289a"
$Farmer_Public_Key = "a690fa842e4081099b7813eba46609892d88d9d2b263a6f010f398e10b1df52b7c31b71dc4a6c93bffa1bc4a91b154e6"
$Plots_erstellen = 1

$Threads = 2
$Memory = 4608

$temp_path = "C:\Chia\Plot"
$farming_path = "D:\Crypto\Chia\Farm"
$script_home_path = "D:\GitHub\create_chia_plots"

$app_version = "1.1.6"

$CurrentUser = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
$CurrentUserName = $CurrentUser.split("\")[1]

$Start_Zeit = Get-Date -Format "dd.MM.yyyy HH:mm"
$host.ui.RawUI.WindowTitle = 'Plotter ' + $Start_Zeit + ' Uhr - ' + $temp_path + ' > ' + $farming_path

Set-Location -Path C:\Users\$CurrentUserName\AppData\Local\chia-blockchain\app-$app_version\resources\app.asar.unpacked\daemon

Write-host "..:: Starte Plotter ::.." -ForegroundColor Green -BackgroundColor Black
chia.exe plots create -f $Farmer_Public_Key -p $Pool_Public_Key -k 32 -n $Plots_erstellen -r $Threads -b $Memory -t $temp_path -d $farming_path

$Ende_Zeit = Get-Date -Format "dd.MM.yyyy HH:mm"
$host.ui.RawUI.WindowTitle = 'Abgeschlossen ' + $Start_Zeit + ' Uhr - ' + $Ende_Zeit + ' Uhr'

Write-host "..:: Plotten abgeschlossen ::.." -ForegroundColor Green -BackgroundColor Black
Write-host "Anzahl der Plots: $Plots_erstellen" -ForegroundColor Green -BackgroundColor Black
Write-host "Plot Temp Pfad:   $temp_path" -ForegroundColor Green -BackgroundColor Black
Write-host "Farm Pfad:        $farming_path" -ForegroundColor Green -BackgroundColor Black
Write-host "Start Zeit:       $Start_Zeit Uhr" -ForegroundColor Green -BackgroundColor Black
Write-host "Ende Zeit:        $Ende_Zeit Uhr" -ForegroundColor Green -BackgroundColor Black
Write-host "..:: Script beendet ::.." -ForegroundColor Green -BackgroundColor Black

Set-Location -Path $script_home_path