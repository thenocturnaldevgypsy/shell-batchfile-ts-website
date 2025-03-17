# shell_ts_website
Created a shell script for Mac OS to run some checks when the website is down for personal user

**Sample output:**
```
Enter the website URL (without http/https): www.google.com
Running troubleshooting tests for www.google.com...
-------------------------------------------

>>> Pinging www.google.com...
PING www.google.com (142.251.10.106): 56 data bytes
64 bytes from 142.251.10.106: icmp_seq=0 ttl=50 time=31.717 ms
64 bytes from 142.251.10.106: icmp_seq=1 ttl=50 time=35.741 ms
64 bytes from 142.251.10.106: icmp_seq=2 ttl=50 time=47.952 ms
64 bytes from 142.251.10.106: icmp_seq=3 ttl=50 time=34.543 ms
64 bytes from 142.251.10.106: icmp_seq=4 ttl=50 time=41.284 ms
64 bytes from 142.251.10.106: icmp_seq=5 ttl=50 time=35.813 ms
64 bytes from 142.251.10.106: icmp_seq=6 ttl=50 time=33.144 ms
64 bytes from 142.251.10.106: icmp_seq=7 ttl=50 time=32.202 ms
64 bytes from 142.251.10.106: icmp_seq=8 ttl=50 time=36.147 ms
64 bytes from 142.251.10.106: icmp_seq=9 ttl=50 time=41.783 ms

--- www.google.com ping statistics ---
10 packets transmitted, 10 packets received, 0.0% packet loss
round-trip min/avg/max/stddev = 31.717/37.033/47.952/4.865 ms

>>> Traceroute to www.google.com...
traceroute: Warning: www.google.com has multiple addresses; using 142.251.10.106
traceroute to www.google.com (142.251.10.106), 64 hops max, 40 byte packets
 1  172.27.6.1 (172.27.6.1)  42.052 ms  30.020 ms  29.871 ms
 2  240.1.168.44 (240.1.168.44)  31.020 ms
    240.1.168.8 (240.1.168.8)  31.299 ms
    240.1.168.10 (240.1.168.10)  31.342 ms
 3  * * *
 4  72.14.205.174 (72.14.205.174)  34.095 ms  31.893 ms *
 5  * * *
 6  142.251.240.254 (142.251.240.254)  74.693 ms
    209.85.244.156 (209.85.244.156)  73.617 ms
    74.125.251.206 (74.125.251.206)  78.123 ms
 7  192.178.109.94 (192.178.109.94)  92.417 ms
    142.251.229.66 (142.251.229.66)  38.729 ms
    192.178.109.94 (192.178.109.94)  36.242 ms
 8  142.251.230.145 (142.251.230.145)  37.058 ms * *
 9  192.178.46.238 (192.178.46.238)  53.017 ms
    142.251.231.206 (142.251.231.206)  32.532 ms
    142.251.252.43 (142.251.252.43)  40.263 ms
10  142.251.52.243 (142.251.52.243)  46.863 ms
    142.251.51.213 (142.251.51.213)  100.069 ms
    142.251.52.193 (142.251.52.193)  65.641 ms
11  * * *
12  * * *
13  * * *
14  * * *
15  * * *
16  * * *
17  * * *
18  * * *
19  * * *
20  * sd-in-f106.1e100.net (142.251.10.106)  32.426 ms  32.729 ms

>>> NSLookup for www.google.com...
Server:         8.8.8.8
Address:        8.8.8.8#53

Non-authoritative answer:
Name:   www.google.com
Address: 142.251.10.103
Name:   www.google.com
Address: 142.251.10.104
Name:   www.google.com
Address: 142.251.10.147
Name:   www.google.com
Address: 142.251.10.105
Name:   www.google.com
Address: 142.251.10.99
Name:   www.google.com
Address: 142.251.10.106


>>> Dig for www.google.com...

; <<>> DiG 9.10.6 <<>> www.google.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 21838
;; flags: qr rd ra; QUERY: 1, ANSWER: 6, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 512
;; QUESTION SECTION:
;www.google.com.                        IN      A

;; ANSWER SECTION:
www.google.com.         150     IN      A       142.251.10.99
www.google.com.         150     IN      A       142.251.10.103
www.google.com.         150     IN      A       142.251.10.147
www.google.com.         150     IN      A       142.251.10.105
www.google.com.         150     IN      A       142.251.10.104
www.google.com.         150     IN      A       142.251.10.106

;; Query time: 32 msec
;; SERVER: 8.8.8.8#53(8.8.8.8)
;; WHEN: Mon Mar 17 16:47:42 +07 2025
;; MSG SIZE  rcvd: 139


>>> Checking if port 80 is open...
Connection to www.google.com port 80 [tcp/http] succeeded!

>>> Fetching HTTP headers...
HTTP/1.1 200 OK
Content-Type: text/html; charset=ISO-8859-1
Content-Security-Policy-Report-Only: object-src 'none';base-uri 'self';script-src 'nonce-ZagAO62-JKUII-Qy09x3IA' 'strict-dynamic' 'report-sample' 'unsafe-eval' 'unsafe-inline' https: http:;report-uri https://csp.withgoogle.com/csp/gws/other-hp
P3P: CP="This is not a P3P policy! See g.co/p3phelp for more info."
Date: Mon, 17 Mar 2025 09:47:30 GMT
Server: gws
X-XSS-Protection: 0
X-Frame-Options: SAMEORIGIN
Transfer-Encoding: chunked
Expires: Mon, 17 Mar 2025 09:47:30 GMT
Cache-Control: private
Set-Cookie: AEC=AVcja2cI0nhMauRdTPZF70ZITymgBX4XGheT7fTApXpZE4a1v3pHc9NJzoA; expires=Sat, 13-Sep-2025 09:47:30 GMT; path=/; domain=.google.com; Secure; HttpOnly; SameSite=lax
Set-Cookie: NID=522=m_ykohpYtlHUlOUypir7BfEfJveUYLQrbfXkytw6StWvh6PP2b8_xjeqtMrbAnn9oMHDmOZqtfsX0IK5f2Xs1RFQnVBYYh--huTNJQoI3ds_QTLKiA1wonOqSnSlZy6iMVMsXpdqQkC2sWdFmezo_ivNQ1GySBOwse_22DTniIW8gFfyB7_VLnp7Mbx7HAZFtdxZ8JF8Zg; expires=Tue, 16-Sep-2025 09:47:30 GMT; path=/; domain=.google.com; HttpOnly


✅ Troubleshooting complete!
```