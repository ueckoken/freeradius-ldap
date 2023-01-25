# freeradius-ldap

Koken統合認証に仕様しているfreeradiusの独自イメージです
[irasnyd/freeradius-ldap](https://github.com/irasnyd/freeradius-ldap)をBaseとして使用しているbase imageとfreeradiusのversionに修正を加えた上で、Kokenの環境に応じた設定を追加しています。

# 環境変数
- "LDAP_HOST=ldap.ueckoken.club"
      - "LDAP_USER=cn=admin,dc=ldap,dc=ueckoken,dc=club"
      - "LDAP_PASS=k0Ken-11235"
      - "LDAP_BASEDN=dc=ldap,dc=ueckoken,dc=club"
      - "LDAP_USER_BASEDN=ou=people,dc=ldap,dc=ueckoken,dc=club"
      - "LDAP_GROUP_BASEDN=ou=group,dc=ldap,dc=ueckoken,dc=club"
      - "RADIUS_CLIENT_CREDENTIALS=ineer:172.0.0.0/8:testing123,koken-lan:192.168.0.0/23:testing123,koken-lan2:192.168.4.0/24:testing123,koken-lan3:192.168.12.0/24:testing123"

- `LDAP_HOST` - LDAP server host name (default port 390)
- `LDAP_USER` - LDAP server user DN
- `LDAP_PASS` - LDAP server password
- `LDAP_BASEDN` - LDAP server Base DN
- `LDAP_USER_BASEDN` - LDAP server Users Base DN
- `LDAP_GROUP_BASEDN` - LDAP server Groups Base DN
- `RADIUS_CLIENT_CREDENTIALS` - The Freeradius server client credentials (comma separated "shrtname:networkaddress/netmask:password" pairs)

# 有効化されている機能

- LDAP
- EAP
- MS-CHAPv2