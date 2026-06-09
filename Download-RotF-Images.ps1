# Download-RotF-Images.ps1
# Downloads all Rime of the Frostmaiden creature images from 5etools-mirror-2
# Source: https://github.com/5etools-mirror-2/5etools-img/tree/main/bestiary/IDRotF
#
# Usage: Run from PowerShell in the directory where you want the images saved
#   .\Download-RotF-Images.ps1
# Or specify an output directory:
#   .\Download-RotF-Images.ps1 -OutputDir "C:\Users\You\foundry\Data\modules\rime-of-the-frostmaiden\assets\actors"

param(
    [string]$OutputDir = ".\rotf-actor-images"
)

$BaseUrl = "https://raw.githubusercontent.com/5etools-mirror-2/5etools-img/main/bestiary/IDRotF/"

$Images = @(
    # Auril
    "Auril (First Form).webp",
    "Auril (Second Form).webp",
    "Auril (Third Form).webp",
    "Auril the Frostmaiden.webp",

    # Arcane Brotherhood NPCs
    "Avarice.webp",
    "Vellynne Harpell.webp",
    "Nass Lantomirs Ghost.webp",
    "Dzaans Simulacrum.webp",

    # Major enemies
    "Xardorok Sunblight.webp",
    "Chardalyn Dragon.webp",
    "Chardalyn Berserker.webp",
    "Gnoll Vampire.webp",
    "Frost Giant Skeleton.webp",
    "Tomb Tapper.webp",
    "Spitting Mimic.webp",

    # Reghed tribe leaders
    "Bjornhild Solvigsdottir.webp",

    # Giants and humanoids
    "Verbeeg Marauder.webp",
    "Goliath Warrior.webp",
    "Goliath Werebear.webp",
    "Frost Druid.webp",

    # Kobolds and duergar
    "Icewind Kobold.webp",
    "Kobold Vampire Spawn.webp",
    "Demos Magen.webp",
    "Galvan Magen.webp",
    "Hypnos Magen.webp",

    # Living spells
    "Living Bigbys Hand.webp",
    "Living Blade of Disaster.webp",
    "Living Demiplane.webp",

    # Monstrosities and undead
    "Coldlight Walker.webp",
    "Snow Golem.webp",
    "Yeti Tyke.webp",
    "Chwinga.webp",
    "Chwinga-2.webp",
    "Chwinga-3.webp",

    # Aberrations
    "Gnome Ceremorph.webp",
    "Gnome Squidling.webp",

    # Beasts
    "Fox.webp",
    "Hare.webp",
    "Seal.webp",
    "Giant Walrus.webp",
    "Knucklehead Trout.webp",
    "Mountain Goat.webp",
    "Sperm Whale.webp",
    "Snowy Owlbear.webp",

    # Other notable NPCs in the book (bonus)
    "Awakened White Moose.webp",
    "Ice Troll.webp",
    "Lonelywood Banshee.webp",
    "Sephek Kaltro.webp",
    "Kadroth.webp",
    "Kingsport.webp",
    "Grandolpha Muzgardt.webp",
    "Spellix Romwod.webp",
    "Prisoner 237.webp",
    "Young Griffon (Medium).webp",
    "Young Griffon (Small).webp",
    "Young Griffon (Tiny).webp",
    "Arveiaturace.webp"
)

# Create output directory if it doesn't exist
if (-not (Test-Path $OutputDir)) {
    New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null
    Write-Host "Created directory: $OutputDir" -ForegroundColor Cyan
}

$Success = 0
$Failed = 0
$Total = $Images.Count

Write-Host "`nDownloading $Total Rime of the Frostmaiden creature images..." -ForegroundColor Cyan
Write-Host "Source: 5etools-mirror-2 (https://github.com/5etools-mirror-2/5etools-img)" -ForegroundColor Gray
Write-Host "Output: $OutputDir`n" -ForegroundColor Gray

foreach ($Image in $Images) {
    # URL-encode spaces and special chars
    $EncodedName = [Uri]::EscapeDataString($Image)
    $Url = $BaseUrl + $EncodedName
    $OutFile = Join-Path $OutputDir $Image

    try {
        Invoke-WebRequest -Uri $Url -OutFile $OutFile -UseBasicParsing -ErrorAction Stop
        Write-Host "  OK  $Image" -ForegroundColor Green
        $Success++
    }
    catch {
        Write-Host "  FAIL $Image - $($_.Exception.Message)" -ForegroundColor Red
        $Failed++
    }
}

Write-Host "`n--- Summary ---" -ForegroundColor Cyan
Write-Host "Downloaded: $Success / $Total" -ForegroundColor Green
if ($Failed -gt 0) {
    Write-Host "Failed: $Failed" -ForegroundColor Red
}
Write-Host "`nImages saved to: $(Resolve-Path $OutputDir)" -ForegroundColor Cyan
Write-Host "`nNext steps:" -ForegroundColor Yellow
Write-Host "  1. Copy the images folder into your Foundry module:" -ForegroundColor Gray
Write-Host "     <Foundry Data>/modules/rime-of-the-frostmaiden/assets/actors/" -ForegroundColor Gray
Write-Host "  2. Or upload the folder to the Altairus-ai/foundry-modules repo" -ForegroundColor Gray
Write-Host "     under release/rime-of-the-frostmaiden/assets/actors/" -ForegroundColor Gray
