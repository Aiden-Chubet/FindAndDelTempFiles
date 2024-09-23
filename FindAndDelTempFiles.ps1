$path = "D:\Shares\Data\Shared\IT"

# Find all files that start with ~$ recursively
Get-ChildItem -Path $path -Recurse -File -Force | Where-Object { $_.Name -match '^~\$' } | Select-Object FullName

# Find and remove all files that start with ~$ recursively
Get-ChildItem -Path $path -Recurse -File -Force | Where-Object { $_.Name -match '^~\$' } | Remove-Item -Confirm:$false -Force

Write-Output "All temporary files starting with ~$ have been removed from $path."
