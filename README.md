# Chia Plots
Kleines PowerShell Script zum Erstellen eines Chia Plots

## Anleitung
Dieses einfache Script erstellt einen Chia Plots. Die folgenden Variablen können gesetzt werden:

`Pool_Public_Key` - hier die Pool Adresse eingeben.
`Farmer_Public_Key` - hier die Public Adresse eingeben.
`Threads` - Anzahl der Threads die genützt werden sollen.
`Memory` - Wieivel Arbeitsspeicher genützt werden soll.
`temp_path` - Temporärer Pfad für das Plotten.
`farming_path` - Zielpfad für den fertigen Plot.
`app_version` - Version des Wallets (wird für den Pfad benötigt).
`script_home_path` - Pfad von diesem Script.

## Public Pool und Farmer Key
Um an ddie beiden Keys zu kommen, muss der folgende Befehl im folgenden Verzeichnis ausgeführt werden:

Der Pfad für die Chia Commandline:
```sh
C:\Users\<Username>\AppData\Local\chia-blockchain\app-<Wallet Version>\resources\app.asar.unpacked\daemon
```

Der Befehl zum auslesen der Keys:
```sh
chia.exe keys show
```