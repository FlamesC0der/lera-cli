$leraArtUrl = "https://raw.githubusercontent.com/FlamesC0der/lera-cli/master/lera-art"
$leraArtPath = "$HOME\.lera-art"

Invoke-WebRequest -Uri $leraArtUrl -OutFile $leraArtPath -UseBasicParsing

$aliasLine = "Set-Alias lera Get-Content `"$leraArtPath`""
if (-not (Test-Path $PROFILE)) {
    New-Item -ItemType File -Path $PROFILE -Force
}
if (-not (Get-Content $PROFILE | Select-String -SimpleMatch $aliasLine)) {
    Add-Content $PROFILE "`n$aliasLine"
} else {
    Write-Host "Alias already exists"
}
Write-Host "Done! Restart PowerShell"