RulePath = "/usr/local/openresty/nginx/conf/waf/wafconf/"
attacklog = "on"
logdir = "/var/log/souche/hack/"
UrlDeny="on"
Redirect="on"
CookieMatch="on"
postMatch="on" 
whiteModule="on" 
ipWhitelist={"127.0.0.1","122.224.209.110","122.224.68.242","115.29.184.157","121.199.46.167","121.41.128.101"}
ipBlocklist={"1.0.0.1"}
CCLOG="on"
CCDeny="on"
CCrate="200/7200"
html=[[Souche Forbid, Contact: shenyuabo@souche.com~~ ]]