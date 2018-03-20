$adapter=Get-NetAdapter
Set-DnsClientServerAddress -InterfaceIndex $adapter.ifIndex -ServerAddresses 10.124.10.10,10.0.0.10,10.124.10.
Set-DnsClient -InterfaceIndex $adapter.ifIndex -ConnectionSpecificSuffix "default.svc.cluster.local"
