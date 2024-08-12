Resize-Partition -DriveLetter C -Size 200GB
Get-Disk | Where-Object PartitionStyle –Eq 'RAW' | Initialize-Disk
