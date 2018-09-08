function mainMenu {
    Write-Host "CYBER RAMBO"
    Write-Host "1. Analyze Host Based on Time Range"
    Write-Host "2. Get a Baseline of Host"
    Write-Host "3. View locations and commands of Common Processes"
    $choice = Read-Host " "
}

function timeRangeMenu {
    clear
    $looping = $true
    
    while ($looping) {
    
        Write-Host "Enter Start time of range. For Example: 9:00AM 12/25/2000"
        $start = Read-Host " "

        Write-Host "Enter End time of Range"
        $end = Read-Host " "

        Write-Host "Is this correct: Start Time:$start End Time:$End
        Write-Host "Press Y or N"

        switch ($isCorrect){
            "Y" {
                $looping = $false; break;
             }
             "N" {
                break;
             }
        }
    }
    
}
