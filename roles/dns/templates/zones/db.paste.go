;
; BIND data file
;
$TTL	604800
@	IN	SOA	dns.thenet.com. admin.thenet.com. (
			      5		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
                             IN	  NS    dns.thenet.com.

; nameserver

paste.go.                    IN   A   10.0.0.1
www.paste.go.                IN   A   10.0.0.1
