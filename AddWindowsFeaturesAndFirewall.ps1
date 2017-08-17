Add-WindowsFeature MSMQ
Add-WindowsFeature Web-Server
netsh advfirewall firewall set rule group=”File and Printer Sharing” new enable=Yes 
