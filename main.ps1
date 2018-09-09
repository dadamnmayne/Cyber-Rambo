$scriptDir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

Import-Module $scriptDir\model.psm1 -Force
Import-Module $scriptDir\view.psm1 -Force

clear
mainMenu

  
 switch ($choice) {

     "1" {

        #Time Range Analysis
        Write-Host "Test"
        $looping = $False
        timeRangeMenu; break

        }

     "2" {

        #Baseline of host
        generalHuntSurvey; break

        }

     "3" {

        #Locations/Commands of common processes
        pathAndCommandLineOfProcesses; break

        }

  }

