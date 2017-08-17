Add-WindowsFeature MSMQ
Add-WindowsFeature Web-Server
netsh advfirewall firewall set rule group="Distributed Transaction Coordinator" new enable=Yes 
