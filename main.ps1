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
