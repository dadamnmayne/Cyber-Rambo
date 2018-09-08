Import-Module model.psm1
Import-Module view.psm1

$looping = $true

while ($looping){
  mainMenu
  
  switch ($choice) {
     "1" {
        #Time Range Analysis
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
}
