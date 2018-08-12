function getFileDeletionEventLogs {

    get-eventlog security | ? {

        #Event ID 4663: An attempt was made to access an object
        $_.eventid -eq "4663" -or 

        #Event ID 4660: An object was deleted [Will not generate if file is protected]
        $_.eventid -eq "4660" -or

        #Event ID 4656: A handle to an object was requested.
        $_.eventid -eq "4656"
    
    }
}





function getRemoteLoginEventLogs {

    get-eventlog security | ? {

        #Event ID 4624: An account was successfully logged on.
        $_.eventid -eq "4624" -and 
        
        #Logon Type 3: Network/Remote Logon.
        $_.message -like "*Logon Type:		3*"
    
    }
}





function searchForInterestingFiles {

    gci c:\ -recurse | ? {
        
        #Indication of files gathered and compressed
        $_.extension -eq ".zip" -or
        $_.extension -eq ".7s" -or

        #Files that may contain sensitive information
        $_.extension -eq ".doc" -or
        $_.extension -eq ".xlsx" -or
        $_.extension -eq ".xls" -or
        $_.extension -eq ".ppt"
        
    }
}





function winEventLogEvidenceOfPSEXEC {

    get-eventlog security | ? { 
        
        #Event ID 4688: A new process has been created.
        $_.eventid -eq "4688" -and 
        $_.message -like "*psexec*"
    
    }
}





function scheduledTasksActivity {

    get-eventlog security | ? {
        $_.eventid -eq "4698" -or
        $_.eventid -eq "4699" -or
        $_.eventid -eq "4700" -or
        $_.eventid -eq "4701" -or
        $_.eventid -eq "4702"

    }
}





function servicesActivity {

    get-eventlog security | ? {
        $_.eventid -eq "4075" -or
        $_.eventid -eq "4070" 
    }
}





function shareActivity {
    get-eventlog security | ? {
        $_.eventid -eq "5140" 
    }
}





function generalHuntSurvey {
    #Processes
    Get-WmiObject -class win32_process
    
    #Services
    get-service
    
    #Scheduled Tasks
    get-scheduledtask
    
    #Local Users
    get-localgroupmember -name users
    
    #Net TCP Connections
    get-nettcpconnection
    
    #Autoruns
}





function evidenceOfFileCreation {
    get-eventlog security | ? {
        #New Files Created
        $_.eventid -eq "4663"
}





function baselineOfCriticalDirectories {
    gci c:\users\*\appdata -recurse
    gci 'C:\Program Files' -recurse
    gci 'C:\Program Files (x86)' -recurse
    gci C:\ProgramData -recurse
    gci c:\windows -recurse
    gci c:\windows\system -recurse
    gci c:\windows\system32 -recurse
}
