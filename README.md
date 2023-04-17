# freeradius-ldap

Koken統合認証に使用しているfreeradiusの独自イメージです
[irasnyd/freeradius-ldap](https://github.com/irasnyd/freeradius-ldap)をBaseとして使用しているbase imageとfreeradiusのversionに修正を加えた上で、Kokenの環境に応じた設定を追加しています。

# 環境変数

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
