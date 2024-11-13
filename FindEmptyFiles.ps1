# Find all empty files recursively
Get-ChildItem -Path $path -Recurse -File | Where-Object { $_.Length -eq 0 } | Select-Object FullName

# Find and remove all empty files recursively
Get-ChildItem -Path $path -Recurse -File | Where-Object { $_.Length -eq 0 } | Remove-Item -Confirm:$false -Force

Write-Output "All empty files have been removed from $path."
