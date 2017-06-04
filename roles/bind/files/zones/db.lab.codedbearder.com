$TTL	604800
@	IN	SOA	ns1.lab.codedbearder.com. admin.lab.codedbearder.com. (
          1   ; Serial
     604800   ; Refresh
      86400   ; Retry
    2419200   ; Expire
     604800   ; Negative Cache TTL
)
;
; name servers - NS records
    IN      NS      ns1.lab.codedbearder.com.

; name servers - A records
ns1.lab.codedbearder.com.           IN  A   192.168.10.21

; 192.168.10.0/24 - A records
plex.lab.codedbearder.com.          IN  A   192.168.10.10
semaphore.lab.codedbearder.com.     IN  A   192.168.10.4
boinc.lab.codedbearder.com.         IN  A   192.168.10.5
mariadb.lab.codedbearder.com.       IN  A   192.168.10.7

; 192.168.100.0/25 - A records
transmission.lab.codedbearder.com.  IN  A   192.168.100.2
sonarr.lab.codedbearder.com.        IN  A   192.168.100.3
radarr.lab.codedbearder.com.        IN  A   192.168.100.4
