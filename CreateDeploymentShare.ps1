netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes 

    # Configure SMB Share and Set permissions
    New-Item -ItemType Directory -Force -Path "C:\Deploy" 
    if(!(Get-SMBShare -Name "Share" -ea 0)){
          New-SMBShare -Name "Share" -Path "C:\Deploy" -Description "Deployment Directory"
    }
    Get-SmbShareAccess -Name "Share" | Grant-SmbShareAccess -AccountName Everyone -AccessRight Full -Force
