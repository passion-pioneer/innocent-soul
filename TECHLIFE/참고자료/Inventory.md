## VPC
| VPC Name             | IP CIDR         | 
|----------------------|-----------------| 
| b088-kr-prd-vpc      | 10.217.0.0/20   | 
| b088-kr-dev-vpc      | 10.217.16.0/20  | 
| b088-kr-mgmt-vpc     | 10.217.32.0/20  | 
| b088-kr-dmz-vpc      | 10.217.48.0/20  | 
| b088-kr-sfc-vpc      | 10.217.80.0/20  | 
| b088-krs-dr-dmz-vpc  | 10.217.112.0/20 | 
| b088-krs-dr-serv-vpc | 10.217.128.0/20 | 
| b088-krs-sfc-vpc     | 10.217.144.0/20 | 

## Subnet
| vpc                  | Subnet                   | Type    | IP Range        |
|----------------------|--------------------------|---------|-----------------|
| b088-kr-prd-vpc      | b088-kr-prd-sbn-lb       | Private | 10.217.0.0/23   |
|                      | b088-kr-prd-sbn-bc1      | Private | 10.217.2.0/23   |
|                      | b088-kr-prd-sbn-bc2      | Private | 10.217.4.0/23   |
|                      | b088-kr-prd-sbn-ap1      | Private | 10.217.6.0/23   |
|                      | b088-kr-prd-sbn-ap2      | Private | 10.217.8.0/23   |
|                      | b088-kr-prd-sbn-db       | Private | 10.217.10.0/23  |
| b088-kr-dev-vpc      | b088-kr-dev-sbn-lb       | Private | 10.217.20.0/23  |
|                      | b088-kr-dev-sbn-ap       | Private | 10.217.22.0/23  |
|                      | b088-kr-dev-sbn-bc       | Private | 10.217.16.0/23  |
|                      | b088-kr-dev-sbn-db       | Private | 10.217.18.0/23  |
| b088-kr-mgmt-vpc     | b088-kr-mgmt-sbn-mgmt1   | Private | 10.217.32.0/23  |
|                      | b088-kr-mgmt-sbn-mgmt2   | Private | 10.217.34.0/23  |
| b088-kr-dmz-vpc      | b088-kr-dmz-sbn-waflb    | Public  | 10.217.48.0/24  |
|                      | b088-kr-dmz-sbn-waf1     | Private | 10.217.49.0/24  |
|                      | b088-kr-dmz-sbn-waf2     | Private | 10.217.50.0/24  |
|                      | b088-kr-dmz-sbn-lb       | Private | 10.217.51.0/24  | 
|                      | b088-kr-dmz-sbn-web1     | Private | 10.217.52.0/24  |
|                      | b088-kr-dmz-sbn-web2     | Private | 10.217.53.0/24  |
|                      | b088-kr-dmz-sbn-devlb    | Private | 10.217.54.0/24  |
|                      | b088-kr-dmz-sbn-devweb   | Private | 10.217.55.0/24  |
|                      | b088-kr-dmz-sbn-px       | Public  | 10.217.56.0/24  | proxy server
|                      | b088-kr-dmz-sbn-devpx    | Public  | 10.217.57.0/24  | 
|                      |                          |         | 10.217.58.0/24  | bastion server
| b088-kr-sfc-vpc      | b088-kr-sfc-sbn-lb       | Private | 10.217.80.0/23  |
|                      | b088-kr-sfc-sbn-mgmt     | Private | 10.217.82.0/23  |
|                      | b088-kr-sfc-sbn-ips      | Public  | 10.217.84.0/23  |
|                      | b088-kr-sfc-sbn-vtg      | Public  | 10.217.86.0/23  |
| b088-krs-drdmz-vpc   | b088-krs-drdmz-sbn-waflb | Public  | 10.217.112.0/23 |
|                      | b088-krs-drdmz-sbn-waf   | Private | 10.217.114.0/23 |
|                      | b088-krs-drdmz-sbn-lb    | Private | 10.217.116.0/23 |
|                      | b088-krs-drdmz-sbn-web   | Private | 10.217.118.0/23 |
| b088-krs-dr-serv-vpc | b088-krs-dr-sbn-lb       | Private | 10.217.128.0/23 |
|                      | b088-krs-dr-sbn-bc       | Private | 10.217.130.0/23 |
|                      | b088-krs-dr-sbn-ap       | Private | 10.217.132.0/23 |
|                      | b088-krs-dr-sbn-db       | Private | 10.217.134.0/23 |
|                      | b088-krs-dr-sbn-mgmt     | Private | 10.217.136.0/23 |
| b088-krs-dr-sfc-vpc  | b088-krs-dr-sfc-sbn-lb   | Private | 10.217.144.0/23 |
|                      | b088-krs-dr-sfc-sbn-mgmt | Private | 10.217.146.0/23 |
|                      | b088-krs-dr-sfc-sbn-ips  | Public  | 10.217.148.0/23 |
|                      | b088-krs-dr-sfc-sbn-vtg  | Public  | 10.217.150.0/23 |

## Domain
| 업무 | 운영구분 | 프론트          | 도메인명               | IP_1          |
|------|----------|-----------------|------------------------|---------------|
| CBDC | 스테이징 | 이용자 전자지갑 | cbdcstg.shinhan.com    | 175.45.222.95 |
| CBDC | 스테이징 | 가맹점 전자지갑 | bizcbdcstg.shinhan.com | 175.45.222.95 |
| CBDC | 운영     | 이용자 전자지갑 | cbdc.shinhan.com       | 211.188.34.11 |
| CBDC | 운영     | 가맹점 전자지갑 | bizcbdc.shinhan.com    | 211.188.34.11 |
| CBDC | 개발     | 이용자 전자지갑 | cbdcdev.shinhan.com    | 175.45.222.95 |
| CBDC | 개발     | 가맹점 전자지갑 | bizcbdcdev.shinhan.com | 175.45.222.95 |
| CBDC | 기타     | 메일            | cbdcmail.shinhan.com   | -             |


| 약어      | Full Name                                    |
|-----------|----------------------------------------------|
| psms      | Privileged Session Management for Server     |
| RedCastle | Secure Operating System                      |
| psmd      | Privileged Session Management for DB         |
| PDM       | Participantbank Digital-Currency Management  |
| EWA       | Enduser Wallet App                           |
| PDV       | Participantbank Digital Voucher Management   |
| AWA       | Affiliate-Store Wallet App                   |
| bco       | Blockchain Core                              |
| bva       | Blockchain, Validator                        |
| bme       | Blockchain, Member                           |
| bip       | Blockchain, InterPlanetary File System       |
| ext       | Blockchain, External Data Management         |
| kms       | Key Management System                        |


### VPN 연동 관련 CIDR

| CIDR                  | 상세 IP 필요시              | 비고                         |
|-----------------------|-----------------------------|------------------------------|
| 10.25.0.0/16          |                             | 사용자 대역 (삼성본관)       |
| 10.200.0.0/16         |                             | 한국은행                     |
| 10.203.0.0/16         |                             | 국민은행                     |
| 10.204.0.0/16         |                             | 기업은행                     |
| 10.205.0.0/16         |                             | 농협은행                     |
| 10.206.0.0/16         |                             | BNK 부산은행                 |
| 10.208.0.0/16         |                             | 우리은행                     |
| 10.209.0.0/16         |                             | 하나은행                     |
| 10.210.0.0/16         |                             | iM뱅크                       |
| 10.218.0.0/16         |                             | BNK 경남은행                 |
| 10.231.0.0/16         |                             | 재정정보원 중계계정          |
| 10.72.14.0/24         |                             | 코리아세븐                   |
| 121.131.196.200/32    |                             | NICE                         |
| 203.175.191.4/32      |                             | 금융결제원 인증센터 (PRD)    |
| 203.175.190.167/32    |                             | 금융결제원 인증센터 (DEV)    |
| 99.51.105.0/24        | 99.51.105.51/32             | 금융결제원 현금영수증 서비스 |
|                       | 99.51.105.174/32            |                              |
|                       | 99.51.105.175/32            |                              |
| 10.243.163.212/32     |                             | 온프렘-스플렁크              |
| 10.21.200.8/32        |                             | 온프렘-oct07                 |
| 10.21.0.8/32          |                             | 온프렘-oco08                 |
| 172.19.0.0/16         | 172.19.97.0/24              | 온프렘-smswgm                |
|                       | 172.19.191.0/24             | 온프렘-LSV 수집서버          |
|                       | 172.19.240.100/32           | 온프렘-대외계                |
|                       | 172.19.2.229/32             | 온프렘-nscmap1p              |
|                       | 172.19.50.0/24              | 온프렘-                      |
| 172.23.0.0/16         | 172.23.231.0/24             | 온프렘-대외계                |
|                       | 172.23.248.152/32           | 온프렘-cubess1d              |
|                       | 172.23.254.87/32            | 온프렘-cubemg1d              |
| 192.168.60.160/32     |                             | 몰리메이트 (PRD)             |
| 192.168.168.200/32    |                             | Sol Open API GW (DEV)        |
| 192.168.91.61/32      |                             | Sol Open API GW (PRD)        |
| 192.168.168.91/32     |                             | 뉴앱개발화면 (DEV)           |
| 192.168.150.0/24      | 192.168.150.171/32          | LG CNS HSM                   |
|                       | 192.168.150.172/32          |                              |
| 192.168.152.0/24      | 192.168.152.9/32            |                              |
|                       | 192.168.152.10/32           |                              |
