#define "constant" variables
$seperator = "===================================================================================================="

#get input
$searchpath = Read-Host 'Enter the root directory you would like to begin to search at: '
$searchterm = Read-Host 'Enter file or directory name you want to search for: '

#inform user about the start and parameters of search    
$seperator | Write-Host
"START of search for $searchterm in dir $searchpath" | Write-Host
$seperator | Write-Host

#search the directory for the file/dir name recursively
Get-ChildItem -path $searchpath -filter $searchterm -recurse

#inform user search has ended    
"`r`n" | Write-Host
$seperator | Write-Host
"END of search for $searchterm" | Write-Host
$seperator | Write-Host
"`r`n" | Write-Host
    
#end of script