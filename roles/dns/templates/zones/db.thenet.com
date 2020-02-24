;
; BIND data file
;
$TTL	604800
@	IN	SOA	ns.thenet.com. (
			      5		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
	                        IN	NS	ns.thenet.com.

ns.thenet.com.              IN	A	10.0.0.1
test.thenet.com.            IN  A   10.0.0.2
