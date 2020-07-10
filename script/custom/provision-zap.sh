#!/usr/bin/env bash
set -e

echo "Provisioning ZAP..."
cd tools
wget https://github.com/zaproxy/zaproxy/releases/download/v2.9.0/ZAP_2.9.0_Linux.tar.gz
tar xvfx ZAP_2.9.0_Linux.tar.gz
rm -rf ZAP_2.9.0_Linux.tar.gz
echo "export PATH=\"/home/vagrant/Documents/tools/ZAP_2.9.0;$PATH\"" >> /home/vagrant/.zshrc
