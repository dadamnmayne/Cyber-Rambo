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
