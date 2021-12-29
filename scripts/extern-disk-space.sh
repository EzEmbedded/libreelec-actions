#!/bin/bash
echo "befor extern disk space:"
df -h
sudo apt-get remove aria2 ansible shellcheck rpm xorriso zsync \
clang-6.0 lldb-6.0 lld-6.0 clang-format-6.0 clang-8 lldb-8 lld-8 clang-format-8 \
clang-9 lldb-9 lld-9 clangd-9 clang-format-9 \
esl-erlang gfortran-8 gfortran-9 \
cabal-install-2.0 cabal-install-2.2 \
cabal-install-2.4 cabal-install-3.0 cabal-install-3.2 heroku imagemagick \
libmagickcore-dev libmagickwand-dev libmagic-dev ant ant-optional kubectl \
mercurial apt-transport-https mono-complete mysql-client libmysqlclient-dev \
mysql-server mssql-tools unixodbc-dev yarn bazel chrpath libssl-dev libxft-dev \
libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev \
php-zmq snmp pollinate libpq-dev postgresql-client ruby-full \
sphinxsearch subversion mongodb-org -yq >/dev/null 2>&1 \
|| echo "failed main apt-get remove"

echo "Removing large packages"
          # sudo apt-get remove -y '^ghc-8.*'
sudo apt-get remove -y '^dotnet-.*'
sudo apt-get remove -y '^llvm-.*'
sudo apt-get remove -y 'php.*'
sudo apt-get remove -y azure-cli google-cloud-sdk hhvm google-chrome-stable firefox powershell
sudo apt-get autoremove -y >/dev/null 2>&1
sudo apt-get clean
sudo apt-get autoremove -y >/dev/null 2>&1
sudo apt-get autoclean -y >/dev/null 2>&1
#echo "https://github.com/actions/virtual-environments/issues/709"
sudo rm -rf "$AGENT_TOOLSDIRECTORY"

echo "remove big /usr/local"
sudo rm -rf "/usr/local/share/boost"
sudo rm -rf /usr/local/lib/android >/dev/null 2>&1
sudo rm -rf /usr/share/dotnet/sdk > /dev/null 2>&1
sudo rm -rf /usr/share/dotnet/shared > /dev/null 2>&1
sudo rm -rf /usr/share/swift > /dev/null 2>&1
echo "after extern disk space:"
df -h