# install.ps1

$profilePath = $PROFILE
$leraArtPath = "$HOME\.lera-art"

Copy-Item -Path ".\lera-art" -Destination $leraArtPath -Force

if (-not (Test-Path $profilePath)) {
    New-Item -ItemType File -Path $profilePath -Force
}

$aliasLine = "Set-Alias lera Get-Content `"$leraArtPath`""
$profileContent = Get-Content $profilePath

if (-not ($profileContent -contains $aliasLine)) {
    Add-Content $profilePath "`n$aliasLine"
} else {
    Write-Host "Alias already exists"
}