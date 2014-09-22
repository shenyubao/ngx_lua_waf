#!/bin/sh
mkdir -p ~/software/openresty
cd ~/software/openresty

sudo apt-get update
sudo apt-get install libreadline-dev libpcre3-dev libssl-dev perl build-essential

if [ ! -x "ngx_openresty-1.7.2.1.tar.gz" ]; then
wget http://openresty.org/download/ngx_openresty-1.7.2.1.tar.gz
fi
tar -zxvf ngx_openresty-1.7.2.1.tar.gz
cd ngx_openresty-1.7.2.1
./configure --with-luajit --prefix=/usr/local/openresty --with-lua51 \
   --with-http_iconv_module --with-http_stub_status_module
make
sudo make install

sudo chown -R souche /usr/local/openresty/
cp /usr/local/nginx-1.4.1/conf/nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
cp /usr/local/nginx-1.4.1/conf/blockips.conf /usr/local/openresty/nginx/conf/
sudo mkdir -p /var/log/souche/hack/
sudo chown -R souche /var/log/souche/hack/

cd /usr/local/openresty/nginx/conf/
svn co https://github.com/shenyubao/ngx_lua_waf/trunk/ waf

