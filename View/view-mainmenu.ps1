function mainMenu {
    Write-Host "CYBER RAMBO"
    Write-Host "1. Analyze Host Based on Time Range"
    Write-Host "2. Get a Baseline of Host"
    $choice = Read-Host " "

    #Change to a Switch to make code elegant
    if ($choice -eq "1") {
        #Go to menu-selectTimeRange.ps1
    }
    if ($choice -eq "2") {
        #Go to menu-getBaseline.ps1
    }
}
